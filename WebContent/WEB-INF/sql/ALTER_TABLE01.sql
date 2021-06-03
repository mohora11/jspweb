-- ALTER TABLE
CREATE TABLE MyTable16
(
	id INT,
    title VARCHAR(255),
    body VARCHAR(255)
);

-- add colum
ALTER TABLE MyTable16
ADD inserted TIMESTAMP;

SELECT * FROM MyTable16;

-- modify column
ALTER TABLE MyTable16
MODIFY COLUMN body VARCHAR(1023);


-- drop column
ALTER TABLE MyTable16
DROP COLUMN inserted;

-- add not null
ALTER TABLE MyTable16
MODIFY title VARCHAR(255) NOT NULL;

desc MyTable16;

INSERT INTO MyTable16
(id, title)
VALUES
(1, 'title1');

SELECT * FROM MyTable16;

ALTER TABLE MyTable16
MODIFY body VARCHAR(1023) NOT NULL;

UPDATE MyTable16
SET body = ''
WHERE body IS NULL;

-- add unique
ALTER TABLE MyTable16
ADD UNIQUE (id);

DESC MyTable16;

-- remove primary keyMember
ALTER TABLE MyTable16
DROP PRIMARY KEY;

-- add auto-increment
ALTER TABLE MyTable16
MODIFY id INT PRIMARY KEY AUTO_INCREMENT;

-- add primary key
ALTER TABLE MyTable16
ADD PRIMARY KEY (id);