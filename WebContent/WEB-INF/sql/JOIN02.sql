CREATE TABLE Users (
	id INT,
    name VARCHAR(255)
);

CREATE TABLE Likes (
	userId INT,
    `like` VARCHAR(255)
);

INSERT INTO Users (id, name) VALUES (1, 'Patrik');
INSERT INTO Users (id, name) VALUES (2, 'Albert');
INSERT INTO Users (id, name) VALUES (3, 'Maria');
INSERT INTO Users (id, name) VALUES (4, 'Darwin');
INSERT INTO Users (id, name) VALUES (5, 'Elizabeth');

INSERT INTO Likes (userId, `like`) VALUES (3, 'Stars');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Climbing');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Code');
INSERT INTO Likes (userId, `like`) VALUES (6, 'Rugby');
INSERT INTO Likes (userId, `like`) VALUES (4, 'Apples');

SELECT * FROM Users;
SELECT * FROM Likes;

SELECT * FROM Users, Likes;

SELECT * FROM Users JOIN Likes ON Users.id = Likes.userId; -- 아래와 같음
SELECT * FROM Users INNER JOIN Likes ON Users.id = Likes.userId;

-- left join
SELECT * FROM Users LEFT JOIN Likes ON Users.id = Likes.userId;

-- right join
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId;

-- full (outer) join 안되는듯?
SELECT * FROM Users FULL JOIN Likes ON Users.id = Likes.userId;

-- 좋아하는 것이 없는 사용자 (순서 생각할것)
SELECT * FROM Likes LEFT JOIN Users ON Users.id = Likes.userId
WHERE Likes.userId IS NULL;

-- 사용자들이 좋아하는 않는 것
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId
WHERE Users.id  IS NULL;

