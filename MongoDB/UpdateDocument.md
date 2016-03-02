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
```
