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
