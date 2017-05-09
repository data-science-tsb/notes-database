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
```ssh
sudo yum install postgresql postgresql-server postgresql-devel postgresql-contrib postgresql-docs

#
# initialize the database
# https://www.postgresql.org/docs/9.6/static/creating-cluster.html
#
#mkdir /var/lib/pgsql/data
#chown ec2-user /var/lib/pgsql/data
#service postgresql initdb
postgresql-setup initdb

#
# start the database
# https://www.postgresql.org/docs/9.6/static/server-start.html
postgres -D postgres
```

## Connecting to a PostgreSQL Database
```ssh
psql -d postgres -h localhost -p 5432 -U postgres -W postgres
```

###### Resources:
- [OSX: Getting Started](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
