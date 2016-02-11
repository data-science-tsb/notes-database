# Oracle Data Types

## Character
| Type      | Example       | Size            | Definition |
| --------- | ------------- |---------------- | ------------- |
| CHAR      | CHAR(20)      | 1 to 2000 bytes | Fixed-length String. Shorter Values are padded with blank |
| VARCHAR2  | VARCHAR2(20)  | 1 to 4000 bytes | Saves space when using shorter strings. Use this over VARCHAR |
| VARCHAR   | VARCHAR(20)   | 1 to 2000 bytes | Occupies Space for NULL. Reserve by Oracle for future changes |
| NCHAR     | NCHAR(20)     | 1 to 2000 bytes | Similar to CHAR but only allows AL16UTF16 and UTF8 Unicode characters |
| NVARCHAR2 | NVARCHAR2(20) | 1 to 4000 bytes | Similar to VARCHAR2 but only allows AL16UTF16 and UTF8 Unicode characters |

Note:
Set the **NLS_LENGTH_SEMANTICS** parameter in  the server parameter file (SPFILE) to decide whether to use **BYTE** (default) or **CHAR** for the length

## Numeric
| Type              | Example        | Size                  | Definition |
| ----------------- | -------------- |-----------------------| ------------- |
| NUMBER            | NUMBER(20,1)   | 38 significant digits | Variable length. Very precise. One byte for exponent, x bytes for the significant digits |
| BINARY_FLOAT      | BINARY_FLOAT   | 5 bytes               | Uses binary precision. 32-bit single-precision |
| BINARY_DOUBLE     | BINARY_DOUBLE  | 9 bytes               | Uses binary precision. 64-bit double-precision |

Precision (Whole Number) and Scale (Decimal Point) of Number

| Declaration | Precision | Scale |
| ----------- | ----------| ----- |
| NUMBER      | 38        | 38    |
| NUMBER(P)   | P         | 0     |
| NUMBER(*,S) | 38        | S     |
| NUMBER(P,S) | P         | S     |
Note: 
Using a negative value scale rounds the actual data to the specified number of places to the left of the decimal point:
```
7,456,123.89 <-- input
NUMBER(7,-2) <-- negative scale
7456100      <-- stored data
```

## Date

## LOB

## Raw and Long Raw

## RowID and URowID

## PL/SQL-exclusive Data Types
* BOOLEAN
* Reference Type
* Composite Type
* User-defined Subtypes


Sources:
* [Oracle: Data Types](https://docs.oracle.com/cd/B28359_01/server.111/b28318/datatype.htm#i2093)
* [Oracle: PL/SQL Data Types](https://docs.oracle.com/cd/B28359_01/appdev.111/b28370/datatypes.htm#CJAEDAEA)
