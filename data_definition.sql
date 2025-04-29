USE MyDatabase;

CREATE TABLE persons (
    id INT UNIQUE NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
)

-- ALTER TABLE persons
--  ADD email VARCHAR(50) NOT NULL

-- ALTER TABLE persons
--  DROP COLUMN phone;

SELECT * FROM persons;

-- DROP TABLE persons;

