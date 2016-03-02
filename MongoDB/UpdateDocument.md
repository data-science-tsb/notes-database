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

print(result); 
//WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
```
- Java Driver
```java
UpdateResult result = db.getCollection("MyCollection").updateOne(
	new Document("age", 10019), 
	new Document("$set", 
		new Document("age", 200))
);
		
System.out.println(result); 
//AcknowledgedUpdateResult{matchedCount=1, modifiedCount=1, upsertedId=null}
```
- Morphia
```java
Query<MyCollection> query = ds.createQuery(MyCollection.class).field("age").equal(10019);
UpdateOperations<MyCollection> operations = ds.createUpdateOperations(MyCollection.class).set("age", 200);
UpdateResults results = ds.update(query, operations);
		
System.out.printf("updated:%s modified:%s upserted:%s", results.getUpdatedCount(), results.getUpdatedExisting(), results.getInsertedCount()); 
//updated:0 modified:false upserted:1
		
```

#### Update Multiple Documents

#### Upsert
