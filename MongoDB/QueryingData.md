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
