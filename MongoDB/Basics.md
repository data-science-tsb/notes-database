# MongoDB Basics

####  Local server: Initial Setup
- create a config and disable authentication: mongo.conf
```
#auth=true
dbpath=C:\data
logpath=C:\log\mongo.log
```
- create the log and data directory as desicribed in the config file
- start server using the config
```
mongod --config C:\mongodb\mongo.conf
```
- connect using the mongo client
```
mongo admin
```
- create the first user
```javascript
db.createUser({"user":"usernamexxxx", "pwd":"passwordxxxx", "roles":[{"role":"dbOwner", "db":"mydatabase"}]});
```
- shutdown the server and change the config file
```
#auth=true
dbpath=C:\data
logpath=C:\log\mongo.log
```

#### Logging In
```
mongo localhost:27017/mydatabase --username usernamexxxx --password passwordxxxx --authenticationDatabase admin
```
