# MongoDB Setup

## Ubuntu Installation
- import public key
```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
```
- create a list file for MongoDB
```sh
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
```
- reload local package
```sh
sudo apt-get update
```
- install MongoDB packages
```sh
sudo apt-get install -y mongodb-org
```
| Package | Description |
| ------- | ----------- |
|mongodb-org	| A metapackage that will automatically install the four component packages listed below.
|mongodb-org-server	| Contains the mongod daemon and associated configuration and init scripts.
|mongodb-org-mongos	| Contains the mongos daemon.
|mongodb-org-shell	| Contains the mongo shell.
|mongodb-org-tools	| Contains the following MongoDB tools: mongoimport bsondump, mongodump, mongoexport, mongofiles, mongooplog, mongoperf, mongorestore, mongostat, and mongotop.

## Running MongoDB

###### Resources:
- [Running MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/#run-mongodb-community-edition)
