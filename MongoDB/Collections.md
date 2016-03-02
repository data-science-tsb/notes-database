# Collections

#### Create
```javascript
db.createCollection("MyCollection");
```

#### Inserting an Object
```javascript
db.MyCollection.insert({name: "Test", age: 1});
```

#### Querying and Object
```javascript
db.MyCollection.findOne({name:"Test"});
```
