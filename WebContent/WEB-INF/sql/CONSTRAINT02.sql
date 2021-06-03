-- unique

CREATE TABLE MyTable9 (
id INT UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello');

SELECT * FROM MyTable9;

INSERT INTO MyTable9
(id, name)
VALUES
(2, 'hello'); -- x

INSERT INTO MyTable9
(id, name)
VALUES
(3, 'hello'); -- x

INSERT INTO MyTable9
(name)
VALUES
('donald');

-- null
SELECT * FROM MyTable9
WHERE id IS NULL; -- id가 null인 값을 찾는다

SELECT * FROM MyTable9
WHERE id IS NOT NULL; -- id가 null이 아닌 값을 찾는다

-- ifnull
SELECT ifnull(id, 0), name FROM MyTable9; -- null
SELECT * FROM MyTable9;

CREATE TABLE MyTable10
(
id INT UNIQUE NOT NULL,
name VARCHAR(255) NOT NULL
);

ALTER TABLE MyTable9
ADD UNIQUE (name);

SELECT * FROM MyTable9;


