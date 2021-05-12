<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
for (int i = 0; i < 5; i++) {
%>
<%= i %>
<%= "<br>" %> <!-- 주석 처리된 결과와 같음 -->
<%--
	out.print(i);
	out.print("<br>");
--%>
<%
}
%>
</body>
</html>