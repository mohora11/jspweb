CREATE TABLE MyTable12 (
id INT PRIMARY KEY AUTO_INCREMENT, -- auto incre 자동으로 숫자증가하기 때문에 id에 int가 필요없음
title VARCHAR(255) NOT NULL,
body VARCHAR(255) NOT NULL
);
INSERT INTO MyTable12
(title, body)
VALUES
('제목1', '본문1');
SELECT * FROM MyTable12;


