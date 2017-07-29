# Relational Databases: PL & SQL

## SQL (Generic)
* DDL: CREATE TABLE
* DML: SELECT
* [DML: JOIN](Generic/JOIN.md)
* DML: HAVING
* DML: INSERT
* DML: INSERT INTO
* DML: SELECT INTO

## MySQL
* ADMIN: Connect
* ADMIN: User Management
* DDL: Database
* DDL: Table
* DML: Transactions
* [PL: Stored Routines (Procedures and Functions)](MySQL/PLStoredRoutines.md)

## Oracle
* [ADMIN: Connect](Oracle/ADMINConnect.md)
* [ADMIN: User Management](Oracle/ADMINUserManagement.md)
* [ADMIN: User Privileges (Grant and Revoke)](Oracle/ADMINUserPrivileges.md)
* [ADMIN: User Roles](Oracle/ADMINUserRoles.md)
* ADMIN: Auditing
* ADMIN: Data Pump (Export/Import)
* [DDL: Database (Tablespace)](Oracle/DDLDatabase.md)
* [DDL: Data Types](Oracle/DDLDataTypes.md)
* DDL: Oracle Function List
* [PL: Basics](Oracle/PLBasics.md)
* [PL: Stored Procedure](Oracle/PLStoredProcedure.md)
* PL: Stored Function
* PL: Scheduler Job

## PostgreSQL
* [Setup](PostgreSQL/Setup.md)
* ADMIN: User
* [PL: pgSQL](http://www.postgresql.org/docs/current/static/plpgsql.html)

# NOSQL Databases

## Mongo
A document storage.

* [Basics](MongoDB/Basics.md)
* [Collection of Documents](MongoDB/Collections.md)
* [Inserting Document](MongoDB/InsertingData.md)
* [Querying Document](MongoDB/QueryingData.md)
* Update Document
* Remove Document
* Embedded Document
* GeoJSON: Geospatial Index and Queries
* [MapReduce](MongoDB/MapReduce.md)

## Redis
A memory-based key-value store.

## Couchbase
Another memory-based storage.

## Accumulo
Another BigTable implementation. Sparse, distributed, sorted, and multi-dimensional map.
###### Noted Features:
- field-level visibility
- internally stores fields in a key-value format, and blank fields are not stored

## DynamoDB

## Google Cloud DataStore
Transactional, Scalable, Fully-managed PaaS, Document-based storage.
###### Noted Features:
- indexes are required for queries
- replicated
- hierchical keys
- get, set, and ancestor queries are strongly consistent
- index queries are eventually consistent

