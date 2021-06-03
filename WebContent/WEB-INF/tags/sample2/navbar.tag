<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/main">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/signup">Sign Up</a>
      </li>
	<a href="<%= request.getContextPath() %>/sample2/signup">Sign Up</a>
	|
	<c:if test="${empty userLogined }" >
		<a href="<%= request.getContextPath() %>/sample2/login">Login</a>
	|
	</c:if>	
	
	<c:if test="${not empty sessionScope.userLogined }" >
		<a href="<%= request.getContextPath() %>/sample2/info">정보보기</a>
		|
		<a href="<%= request.getContextPath() %>/sample2/logout">Logout</a>
		|
	</c:if>
	<a href="<%= request.getContextPath() %>/sample2/list">목록보기</a>

	</nav>
</div>