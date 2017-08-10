# Neo4J Basics
Neo4J is a native graph database

## Inserting Data
```
CREATE (ee: Person
{
  name: 'Emil',
  from: 'Sweden',
  klout: 99
}
)
```

## Basic Query
```
MATCH (ee: Person)
WHERE ee.name = 'Emil'
RETURN ee
```

## Transitive Query 
```
MATCH (a: Person {name: 'Test'})-[:FRIENDS*2]->(f: Person) WHERE f <> a RETURN f
MATCH (a: Person {name: 'Test'})-[:FRIENDS*2..3]->(f: Person) WHERE f <> a RETURN f
```
