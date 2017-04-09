# Using Brew
```
#install
brew update
brew install postgres

#start
postgres -D /usr/local/var/postgres
```

# Connecting to a PostgreSQL Database
```ssh
psql -d postgres -h localhost -p 5432 -U postgres -W postgres
```
