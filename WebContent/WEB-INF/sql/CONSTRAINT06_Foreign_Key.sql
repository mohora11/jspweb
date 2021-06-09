use test;
-- member 비슷
CREATE TABLE MyTable17
(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- board 비슷 
DROP TABLE MyTable18;
CREATE TABLE MyTable18
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
	t17Id VARCHAR(255) NOT NULL,
    FOREIGN KEY(t17Id) REFERENCES MyTable17(id)
);

INSERT INTO MyTable17
(id, name)
VALUES
('donald', 'trump');

INSERT INTO MyTable18 -- 삭제는 18 17 순서로
(title, t17Id)
VALUES
('usa', 'donald');

SELECT * FROM MyTable18;

INSERT INTO MyTable18
(title, t17Id)
VALUES
('korea', 'kim');

DELETE FROM MyTable17
WHERE id = 'donald'; -- 18테이블이 donald를 참조하고 있어 삭제 안됨

DELETE FROM MyTable18
WHERE t17Id = 'donald';
 
