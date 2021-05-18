<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("attr1", "pageVal");
request.setAttribute("attr1", "reqVal");
session.setAttribute("attr1", "sesVal");
application.setAttribute("attr1", "appVal");

%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>


<title>Insert title here</title>
</head>
<body>
	<div class="container">
	${attr1 }		
	</div>
</body>
</html>