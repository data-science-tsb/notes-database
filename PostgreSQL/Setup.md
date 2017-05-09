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

local   all             all                                     trust
host    all             postgres      0.0.0.0/0                 md5
```
- Edit postgresql.conf
```ssh
sudo vi /var/lib/pgsql9/data/postgresql.conf

listen_addresses='*'
port = 5432
```

## Connecting to a PostgreSQL Database
```ssh
psql -d postgres -h localhost -p 5432 -U postgres -W postgres
```

###### Resources:
- [OSX: Getting Started](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
