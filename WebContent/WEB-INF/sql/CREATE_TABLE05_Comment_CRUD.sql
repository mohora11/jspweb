-- CRUD create read use delete
DROP TABLE IF EXISTS Coment; -- if exists 테이블이 있으면 삭제 없으면 안함
CREATE TABLE Comment
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	comment VARCHAR(2047) NOT NULL,
    memberID  VARCHAR(255) NOT NULL,
    boardID INT NOT NULL,
    inserted TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (memberId) REFERENCES Member(id),
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

SELECT * FROM Comment;

Drop Table Comment;
