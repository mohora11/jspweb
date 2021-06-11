<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>


<title>Insert title here</title>
</head>
<body>
<div class="container">
	
	<s2:navbar />

<div class="jumbotron">
  <h1 class="display-4"><i class="fab fa-java"></i>WELL COME</h1>
  <p class="lead">Basic servlet/JSP built user, board application</p>
  <hr class="my-4">
  <p>This is a bulletin board that I made after learning programming for the first time. Start by signing up for membership.</p>
  <a class="btn btn-primary btn-lg" href="<%= request.getContextPath() %>/sample2/member/signup" role="button"><i class="fas fa-user-plus"></i> SIGN UP</a>
</div>
</div>
</body>
</html>