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
```
db.createUser({"user":"usernamexxxx", "pwd":"passwordxxxx", "roles":[{"role":"dbOwner", "db":"kwl"}]});
```
- shutdown the server and change the config file
```
#auth=true
dbpath=C:\data
logpath=C:\log\mongo.log
```
