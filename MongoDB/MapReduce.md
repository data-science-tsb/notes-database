#MapReduce

```javascript
db.artist.mapReduce(function() {
	var country = this.country;
	if (typeof country === 'undefined') {
		emit('NONE', 1);
		return;
	}
	country = country.country;
	if (typeof country === 'undefined') {
		emit('NONE', 1);
	} else {
		emit(country, 1);
	}
}, function(key, values) {
	var sum = values.reduce(function(a,b){return a+b}, 0);
	return sum;
}, {
	out: 'countByCountry'
});
```
