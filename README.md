Carat Database
========

![alt text](https://github.com/markash/carat/raw/master/logo.png "Carat Database")

## Exordium

> Definition : A unit of weight for precious stones and pearls, now equivalent to 200 milligrams. [Wikipedia][Wikipedia definition]

## Narratio

Carat Database is the base project for database connectivity within the Carat project family

## Constructio

### Postgres

```
mvn -Ppostgres flyway:init

mvn -Ppostgres flyway:migrate

mvn -Ppostgres jooq-codegen:generate

mvn package
```

### SQL Server

```
mvn -Psqlserver flyway:init

mvn -Psqlserver flyway:migrate

mvn -Psqlserver jooq-codegen:generate

mvn package
```

*NOTE* SQL Server JDBC Driver

Due to a license limitation the Microsoft SQL Server JDBC driver is not packaged with the application but can be
installed using the instructions found at [this blog][sqlserver jdbc]

[Wikipedia definition]: http://en.wikipedia.org/wiki/Carat_(mass)
[sqlserver jdbc]: http://mpashworth.wordpress.com/2012/04/15/adding-microsoft-sql-server-jdbc-driver-to-nexus-and-local-maven-repository/