CREATE TABLE MyTable7
(
id INT,
name VARCHAR(255)
);

INSERT INTO MyTable7
(id, name)
VALUES (3, 'hello');

SELECT * FROM MyTable7;

INSERT INTO MyTable7
(id) VALUES (4);

INSERT INTO MyTable7
(name) VALUES ('donald');

-- NOT NULL
CREATE TABLE MyTable8
(
id INT NOT NULL,
name VARCHAR(255) NOT NULL
);

insert INTO MyTable8
(id, name)
values (3, 'hello');
select * From MyTable8;

INSERT INTO MyTable8
(name) values ('donald');

DESC MyTable8;
