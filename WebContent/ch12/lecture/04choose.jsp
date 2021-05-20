<%@ page contentType="text/html; charset=UTF-8" %>
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
	<h1>choose tag</h1>
	<c:choose>
		<c:when test="false"> <%--여기가 true면 when이 실행 --%>
			<h1>실행 1</h1>	  <%-- false면 ohterwise가 실행 --%>
		</c:when>
		<c:otherwise>
			<h1>그외 1</h1>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>