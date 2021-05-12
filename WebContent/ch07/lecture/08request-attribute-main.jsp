<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%
	User user = new User("donald", 22, "us");
	request.setAttribute("member", user);
	
	Object o = request.getAttribute("member");
	
	User user2 = (User) o;
	
	String name = user2.getName();
	int age = user2.getAge();
	String address = user2.getAddress();
	
	
	%>
	
	<h1>유저 정보</h1>
	
	<jsp:include page="08request-attribute-sub.jsp"></jsp:include>
	
	
</div>
</body>
</html>