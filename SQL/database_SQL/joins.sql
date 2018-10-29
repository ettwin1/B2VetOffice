/*Examples of Inner Joins*/
SELECT customer.fname, customer.lname, animal.name, animal.species
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'horse';


SELECT customer.fname, customer.lname, animal.name, animal.species
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'horse' AND animal.name LIKE 'c%';


SELECT customer.fname AS 'Customer First Name', customer.lname AS 'Customer Last Name', animal.name AS 'Pet Name', animal.species, animal.yearBorn
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'dog' and animal.name LIKE 'm%' AND animal.yearBorn > 2005
ORDER BY animal.yearBorn, animal.name ASC;


SELECT customer.fname, customer.lname, animal.name
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE customer.lname LIKE '%son'
ORDER BY customer.lname ASC;


SELECT customer.fname, customer.lname, customer.state, animal.name, animal.gender, animal.species
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE customer.state LIKE 'ID' AND animal.species LIKE 'cat' AND animal.gender LIKE 'f'
OR customer.state LIKE 'ID' AND animal.species LIKE 'dog' AND animal.gender LIKE 'f'
ORDER BY animal.species, animal.name ASC;

------------------------------------------------

var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "B2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;
  var sql = "
	[Paste SQL Here]
";
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});


-------------------------------------------------


