// The following is the third
// most interesting Query


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