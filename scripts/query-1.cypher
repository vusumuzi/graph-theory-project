// The following is the First
// most interesting Query


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
