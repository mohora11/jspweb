CREATE TABLE Table01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId INT
);

CREATE TABLE Table02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES ('kim', 1);

INSERT INTO Table01
(name, bookId)
VALUES ('lee', 2);

INSERT INTO Table01
(name, bookId)
VALUES ('choi', 3);

INSERT INTO Table01
(name, bookId)
VALUES ('park', 4);

INSERT INTO Table02
(bookName)
VALUES ('book1');

INSERT INTO Table02
(bookName)
VALUES ('book2');

INSERT INTO Table02
(bookName)
VALUES ('book3');

INSERT INTO Table02
(bookName)
VALUES ('book4');

SELECT * FROM Table01; -- 4개 record

SELECT * FROM Table02; -- 4개 record

SELECT * FROM Table01, Table02; -- 16개 record

-- join join을 사용하여 T1의 bookid와 T2의 id가 같은것을 뽑아냄 
SELECT * FROM
Table01 JOIN Table02
ON Table01.bookId = Table02.id;

-- alias
-- table
SELECT * FROM -- as를 넣어 줄임 및 별칭으로 만들어줌
Table01 AS t1 JOIN Table02 AS t2
ON t1.bookId = t2.id;

SELECT * FROM -- as를 없앤것
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;

-- column 콜럼도 별칭 생성 가능
SELECT 
t1.id AS id1,
t1.name AS name1,
t1.bookId AS bookId,
t2.id AS id2,
t2.bookName AS bname
FROM
Table01 t1 JOIN Table02 t2
On t1.bookId = t2.id;

SELECT -- as 삭제
t1.id id1,
t1.name name1,
t1.bookId bookId,
t2.id id2,
t2.bookName bname
FROM
Table01 t1 JOIN Table02 t2
On t1.bookId = t2.id;



