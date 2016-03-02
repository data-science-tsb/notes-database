# MongoDB: Inserting Data

#### Native
```javascript
MongoClient mongoClient = new MongoClient();
MongoDatabase db = mongoClient.getDatabase("test");

db.getCollections("MyCollections").insertOne(new Document());
```

#### Java Driver
```java
Document myCollection = new Document("name", "test" + System.currentTimeMillis()).append("age", 1);

db.getCollection("MyCollection").insertOne(myCollection);
```

#### Morphia
```java
MongoClient mongoClient = new MongoClient();
MongoDatabase db = mongoClient.getDatabase("test");

db.getCollections("MyCollections").insertOne(new Document());
```

##### References: 
- [CollectionsBasics](/MongoDB/Basics.md)
