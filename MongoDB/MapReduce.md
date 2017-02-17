# MapReduce
```java
DBCollection inputCollection = getDatastore().getCollection(Artist.class);
String outputCollection = "dataCache";
DBObject query = new BasicDBObject();

String mapFunction = StringLoader.loadFromResource("/js/mapArtistCountry.js");
String reduceFunction = StringLoader.loadFromResource("/js/reduceArtistCountry.js");

MapReduceCommand mapReduce = new MapReduceCommand(
		inputCollection,
		mapFunction, reduceFunction,
		outputCollection,
		MapReduceCommand.OutputType.REDUCE,
		query);

return inputCollection.mapReduce(mapReduce);
```

Map
```javascript
function() {
	var cacheDataPrefix = 'artist.count_';
	var cacheType = 'artist.count';
	var now = new Date();
	var artist = this;

	//counter for all
	var all = {
		type					: cacheType,
		coverage				: '_ALL',
		date					: now,
		indexed					: 1,
		country					: 0,
		tracked					: 0,
		image					: 0,
		bio						: 0,
		facebook				: 0,
		youtube					: 0,
		instagram				: 0,
		spotify					: 0,
		similarArtist			: 0,
		trackedImage			: 0,
		trackedBio				: 0,
		trackedFacebook			: 0,
		trackedYoutube			: 0,
		trackedInstagram		: 0,
		trackedSpotify			: 0,
		trackedSimilarArtist	: 0
	};

	//counter by coverage (country or none)
	var cvg = {
		type					: cacheType,
		coverage				: '_NONE',
		date					: now,
		indexed					: 1,
		country					: 0,
		tracked					: 0,
		image					: 0,
		bio						: 0,
		facebook				: 0,
		youtube					: 0,
		instagram				: 0,
		spotify					: 0,
		similarArtist			: 0,
		trackedImage			: 0,
		trackedBio				: 0,
		trackedFacebook			: 0,
		trackedYoutube			: 0,
		trackedInstagram		: 0,
		trackedSpotify			: 0,
		trackedSimilarArtist	: 0
	};

	var isNotUndefined = function(value) {
		return !(typeof value === 'undefined') && !(value === null);
	};

	var isNotEmpty = function(value) {
		return isNotUndefined(value) && value.toString().trim().length > 0;
	};
	
	var isTracked = function(artist) {
		return isNotUndefined(artist.tracked) && artist.tracked;
	}(artist);

	if (isNotUndefined(artist.country) && isNotUndefined(artist.country.country)) {
		cvg.coverage = artist.country.country;
		all.country = 1;
		cvg.country = 1;
	}

	if (isTracked) {
		cvg.tracked = 1;
		all.tracked = 1;
	}

	if (isNotEmpty(artist.photoUrl)) {
		cvg.image = 1;
		all.image = 1;
		if(isTracked) {
			cvg.trackedImage = 1;
			all.trackedImage = 1;
		}
	}

	if (isNotEmpty(artist.bio)) {
		cvg.bio = 1;
		all.bio = 1;
		if(isTracked) {
			cvg.trackedBio = 1;
			all.trackedBio = 1;
		}
	}
	
	var hasSocialMedia = function(a) {
		var socialMedia = {};
		if (isNotEmpty(a.referenceEntries)) {
			a.referenceEntries.forEach(function(referenceEntry) {
				socialMedia[(referenceEntry.type)] = 1;
			});
		}
		return function(referenceEntry){
			return isNotEmpty(socialMedia[referenceEntry]);
		}
	}(artist);
	
	var toTitleCase = function(str) {
	    return str.replace(/\w\S*/g, function(txt){
	    	return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();
	    });
	}
	
	['FACEBOOK', 'YOUTUBE', 'INSTAGRAM', 'SPOTIFY'].forEach(function(social) {
		if (hasSocialMedia(social)) {
			cvg[social.toLowerCase()] = 1;
			all[social.toLowerCase()] = 1;
			if(isTracked) {
				cvg['tracked' + toTitleCase(social)] = 1;
				all['tracked' + toTitleCase(social)] = 1;
			}
		}
	});
	
	if (isNotUndefined(artist.lastfmInfo) && isNotUndefined(artist.lastfmInfo.similarArtists)) {
		cvg.similarArtist = 1;
		all.similarArtist = 1;
		if (isTracked) {
			cvg.trackedSimilarArtist = 1;
			all.trackedSimilarArtist = 1;
		}
	}

	emit(cacheDataPrefix+all.coverage, all);
	emit(cacheDataPrefix+cvg.coverage, cvg);
}
```

Reduce
```javascript
function(key, values) {
	var sum = values.reduce(function(a,b){
		var c = {
			type					: b.type,
			coverage				: b.coverage,
			date					: a.date.getTime() > b.date.getTime() ? a.date : b.date,
		};
		for(var p in b) {
			if (['type', 'coverage', 'date'].includes(p)) continue;
			c[p] = a[p] + b[p];
		}
		return c;
	}, {
			type					: cacheType,
			coverage				: '_ALL',
			date					: new Date(),
			indexed					: 0,
			country					: 0,
			tracked					: 0,
			image					: 0,
			bio						: 0,
			facebook				: 0,
			youtube					: 0,
			instagram				: 0,
			spotify					: 0,
			similarArtist			: 0,
			trackedImage			: 0,
			trackedBio				: 0,
			trackedFacebook			: 0,
			trackedYoutube			: 0,
			trackedInstagram		: 0,
			trackedSpotify			: 0,
			trackedSimilarArtist	: 0
		});
	return sum;
}
```
