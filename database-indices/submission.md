<!-- Find all rows that have an ingredient name of Brussels sprouts. -->
EXPLAIN ANALYZE SELECT * FROM ingredients WHERE name LIKE %Brussel Sprouts%

<!-- Calculate the total count of rows of ingredients with a name of Brussels sprouts. -->

EXPLAIN ANALYZE SELECT count(name) FROM ingredients WHERE name LIKE %Brussel Sprouts%

Find all Brussels sprouts ingredients having a unit type of gallon(s).

EXPLAIN ANALYZE SELECT * FROM ingredients WHERE name LIKE %Brussel Sprouts% AND unit LIKE %gallon(s)%;

Find all rows that have a unit type of gallon(s), a name of Brussels sprouts or has the letter j in it.

EXPLAIN ANALYZE SELECT * FROM ingredients WHERE name LIKE %Brussel Sprouts%' OR name LIKE %j% AND unit LIKE %gallon(s)%;

CREATE INDEX ON ingredients(name);
