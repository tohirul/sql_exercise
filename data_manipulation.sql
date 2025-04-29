USE MyDatabase;

INSERT INTO customers (id, first_name, country, score)
 VALUES (6, 'Anna', 'UK', 230),
 (7, 'Sam', 'USA', 480);

INSERT INTO persons(id, person_name, birth_date, phone) 
 SELECT id, first_name AS person_name, NULL, 'UNKNOWN' FROM customers;


UPDATE persons SET birth_date='2001-02-12', phone='+06895350252'
 WHERE id=1;

DELETE FROM persons where phone='UNKNOWN';

SELECT * FROM persons;
