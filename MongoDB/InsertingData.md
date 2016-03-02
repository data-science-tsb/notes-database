# MongoDB: Inserting Data

#### Native
```javascript
db.MyCollection.insert({
  name: "test",
  age: 1
});
```

#### Java Driver
```java
Document myCollection = new Document("name", "test" + System.currentTimeMillis()).append("age", 1);

db.getCollection("MyCollection").insertOne(myCollection);
```

#### Morphia
```java
MyCollection myCollection = new MyCollection();
myCollection.setName("morphiename2");
myCollection.setAge(10019);
		
ds.save(myCollection);
```

##### References: 
- [Basics: Connecting to Database](/MongoDB/Basics.md)
