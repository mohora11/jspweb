-- 게시물을 작성하지 않은 Member의 id를 나열하시오

SELECT * FROM Member;
SELECT * FROM Board;

SELECT m.id, m.name
FROM Member m LEFT JOIN Board b
	ON b.memberId = m.id
WHERE b.memberId IS NULL;

SELECT m.id, m.name
FROM Board b RIGHT JOIN Member m
ON b.memberId = m.id
WHERE b.memberId IS NULL;

use test;