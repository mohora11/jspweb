<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="book" class="ch08.Book">
<!--scope 생략되면 이 페이지에서만 활용가능  -->
	<jsp:setProperty name="book" property="title" value="JAVA" />
</jsp:useBean>



<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	
</div>
</body>
</html>