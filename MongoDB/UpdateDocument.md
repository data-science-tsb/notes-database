# MongoDB: Update Document

#### Update a Single Document
- Command Line
```javascript
db.MyCollection.update(
	{age: 10019}, //query
	{ //update
		$set: {
			age: 200
		}
	}
);

//returns a WriteResult object
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
```
