// The following is the second
// most interesting Query



#### Query two 
Delete all nodes and relationships
This query will delete all nodes and relationships. It is used especially when deleting small amounts of especially when is playing around with 
with data sets. This proved handy when l wanted to delete the data from my database when l was building it.

Query 

MATCH (n)
DETACH DELETE n
```