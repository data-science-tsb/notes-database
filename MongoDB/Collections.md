# MongoDB: Collections

#### Create
```javascript
db.createCollection("MyCollection");
```

#### Adding an Index
```javascript
db.MyCollection.ensureIndex({indexName: 1});
```

#### Inserting an Object
```javascript
db.MyCollection.insert({name: "Test", age: 1});
```

#### Querying and Object
```javascript
db.MyCollection.findOne({name:"Test"});
```

#### Deleting/Dropping Collecion Items
```javascript
db.MyCollection.drop();
```
