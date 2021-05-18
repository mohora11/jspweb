<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<%
String[] arr1 = {"h1ml", "css", "js", "jqery", "bootstrap"};
pageContext.setAttribute("list", arr1);
pageContext.setAttribute("i", 3);
%>


<title>Insert title here</title>
</head>
<body>
	<div class="container">
		0 : ${list[0] } <br>
		1 : ${list[1] } <br>
		2 : ${list["2"] } <br>
		3 : ${list[i] } <br>
		5: ${list[5] }
	</div>
</body>
</html>