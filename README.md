# Irish Constituencies Neo4j Database
###### Vusumuzi Khumalo, G00253470

## Introduction

The project is about Ireland but specifically looking at the Parliamentary constituencies.
These constituencies are graphically represented using neo4j. Cypher language was used to create
a graph database.

## Database

Credit is given to online sources of information such as Neo4j, RTÉ News - Election 2016 - Constituencies - RTE, irish-elections.storyful for the important information in creating the database. There are officially 40 constituencies in Ireland, 
representing 12 political parties and 158 members of Dáil Éireann. Each constituency is represented as a node in the database. All the members  who ran for elections are also represented as a single node. A relationship is created to show the constituency and a political member who stood for the 2011 Irish elections.

 LOAD CSV FROM 'file:///C:/Users/Vusumuzi/Downloads/result.csv' AS line CREATE (:Constituencies {costituencies: line[2]})

## Queries

The word CREATE is used to create a database but MATCH is a special word that is used in Cypher Language to retrieve the information
 on Graph databases.The general syntax for getting information from the database is as follows:
 
 MATCH (n) 

      RETURN(n)
 
 The above querry will return with information on the graph database and giving in detailed about the nodes. In the project it will show 
 constituencies and the relationship between the candidates who ran in the  2011 general elections.



#### Query one 

ORDER BY 

You can order by multiple properties by stating each identifier in the ORDER BY clause. 
Cypher will sort the result by the first identifier listed, and for equals values, go to the next property in the ORDER BY clause until 
all properties have been read.

Query 

MATCH (n)
RETURN n
ORDER BY  n.name, n.constituency
This returns the nodes, sorted first by their name, and then by their constituency.



#### Query two 
Delete all nodes and relationships
This query will delete all nodes and relationships. It is used especially when deleting small amounts of information especially when  playing around 
with data sets. This proved handy when l wanted to delete the data from my database when l was building it.

Query 

MATCH (n)
DETACH DELETE n
```

#### Query three 

Set a property
This is one of the most important querries in creating a database where after realising that there is data missing or you want the change 
data in a database, you use the SET property on a node or relationship.

Query 

MATCH (n { name: 'Gerry' })
SET n.surname = 'Taylor'
RETURN n

The above query will set surname to Taylor if there was not any surname. It will change the surname to Taylor if there was already
existing surname.

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2.  http://neo4j.com/docs/stable/query-load-csv.html
3. http://irish-elections.storyful.com/candidates.csv
4. 11.1. Match - - The Neo4j Manual v2.3.3
5. 12.1. Create - - The Neo4j Manual v2.3.3