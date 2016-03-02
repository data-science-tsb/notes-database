# MongoDB: Querying Data

#### Find All
- Command Line
```javascript
db.MyCollection.find({}); //equivalent to .find();
```
- Java Driver
```java
FindIterable<Document> iterable = db.getCollection("MyCollection").find();
```
- Morphia
```java
Query<MyCollection> query = ds.createQuery(MyCollection.class);
MorphiaIterator<MyCollection, MyCollection> iterator = query.fetch();
```

#### Equality
- Command Line
```javascript
db.MyCollection.find({age:1}); //return all objects in MyCollection WHERE age == 1
```
- Java Driver
```java
FindIterable<Document> iterable = db.getCollection("MyCollection").find(new Document("age", 10019));

//using Filters.eq helper method
FindIterable<Document> iterable = db.getCollection("MyCollection").find(Filters.eq("age", 10019));
```
- Morphia
```java
MorphiaIterator<MyCollection, MyCollection> iterator = query.field("age").equal(10019).fetch();
```

#### References
- [Querying: Mongo](https://docs.mongodb.org/v2.6/tutorial/query-documents/)
- [Querying: Java Driver](https://docs.mongodb.org/getting-started/java/query/)
- [Querying: Morphia](http://mongodb.github.io/morphia/1.0/getting-started/quick-tour/)
