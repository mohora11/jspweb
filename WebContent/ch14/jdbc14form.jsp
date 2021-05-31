<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>


<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>Add Customer</h1>
	
	<form action="${pageContext.request.contextPath }/JDBC14InsertServlet" method="post">
		Customer Name : <input type="text" name="name"> <br>
		Contact Name : <input type="text" name="contactName"> <br>
		Address : <input type="text" name="address"> <br>
		City: <input type="text" name="city"> <br>
		Postal Code : <input type="text" name="country"> <br>
		Country : <input type="text" name="countyr"> <br>
		<input type="submit">
	</form>
</div>
</body>
</html>