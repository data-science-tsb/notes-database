# MongoDB: Inserting Data

#### Native
```javascript
MongoClient mongoClient = new MongoClient();
MongoDatabase db = mongoClient.getDatabase("test");

db.getCollections("MyCollections").insertOne(new Document());
```

#### Java Driver
```java
MongoClient mongoClient = new MongoClient();
MongoDatabase db = mongoClient.getDatabase("test");

db.getCollections("MyCollections").insertOne(new Document());
```

#### Morphia
```java
MongoClient mongoClient = new MongoClient();
MongoDatabase db = mongoClient.getDatabase("test");

db.getCollections("MyCollections").insertOne(new Document());
```

Reference: [Basics](/MongoDB/Basics.md)
