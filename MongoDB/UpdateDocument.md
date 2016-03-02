# MongoDB: Update Document

#### Update a Single Document
- Command Line
```javascript
var result = db.MyCollection.update(
	{age: 10019}, //query
	{ //update
		$set: {
			age: 200
		}
	}
);

print(result); //WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
```
- Java Driver
```java
UpdateResult result = db.getCollection("MyCollection").updateOne(
	new Document("age", 10019), 
	new Document("$set", 
		new Document("age", 200))
);
		
System.out.println(result); //AcknowledgedUpdateResult{matchedCount=1, modifiedCount=1, upsertedId=null}
```
