# PostgreSQL Setup
###### Other Commands
```ssh
#version check
postgres -V
```

###### PSQL commands:
```ssh
#Display Users
\du

#List Databases
\l

#Current Database and User
\c

#Display Tables
\dt

#Describe Tables
\d+ <table_name>

# Connect to database
\c <db_name>
```


# Installation
## Brew
```ssh
#install
brew update
brew install postgres

#start for local development, on-demand
postgres -D /usr/local/var/postgres
```

## Yum
[Source](https://github.com/snowplow/snowplow/wiki/Setting-up-PostgreSQL)
```ssh
sudo yum install postgresql postgresql-server postgresql-devel postgresql-contrib postgresql-docs
sudo service postgresql initdb
```

- Edit your pg_hba.conf file:
```ssh
sudo vi /var/lib/pgsql9/data/pg_hba.conf

#ubuntu
sudo vi /etc/postgresql/9.5/main/pg_hba.conf

local   all             all                                     trust
host    all             all           0.0.0.0/0                 md5
host    all             all             ::1/128                 md5
```
- Edit postgresql.conf
```ssh
sudo vi /var/lib/pgsql9/data/postgresql.conf

#ubuntu
sudo vi /etc/postgresql/9.5/main/postgresql.conf

listen_addresses='*'
port = 5432
```
- start
```ssh
sudo service postgresql start
```

## Connecting to a PostgreSQL Database
```ssh
psql -d postgres -h localhost -p 5432 -U postgres -W postgres
```

create user
```sql
-- postgres started using the term 'role' around version 9.x
CREATE ROLE tradebutler PASSWORD 'tradebutlersecret'
   VALID UNTIL 'infinity';
```

```sql
-- in case the default user create has no login permission
ALTER ROLE tradebutler WITH LOGIN;
create database
DROP DATABASE tradebutler_data_core_dev;

CREATE DATABASE tradebutler_data_core_dev
  WITH ENCODING='UTF8'
       OWNER=tradebutler
       CONNECTION LIMIT=-1
       TABLESPACE=pg_default;
```
###### Resources:
- [OSX: Getting Started](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
