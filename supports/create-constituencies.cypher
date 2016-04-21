// This query creates nodes representing all constituencies in Ireland.


CREATE
	(gw:Constituency {name: "Galway West"})
	, (gw:Constituency {name: "Galway East"})
	, ...
	
;


// This query creates nodes representing all candidates in Ireland.

LOAD CSV FROM 'file:///C:/Users/Vusumuzi/Downloads/candidates-list.csv' AS line CREATE (:Candidate {first_name: line[0], last_name: line[1],
 gender:line[5], email: line[3],party: line[21], constituency: line[20]})