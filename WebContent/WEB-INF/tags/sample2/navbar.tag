<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/main"><i class="fas fa-home"></i> HOME<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/signup"><i class="fas fa-user-plus"></i> SIGN UP</a>
      </li>
	
	<li class="nav-item">
	<c:if test="${empty userLogined }" >
		<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/login"><i class="fas fa-sign-in-alt"></i> LOGIN</a>
	</c:if></li>
	<li class="nav-item">
	<c:if test="${not empty sessionScope.userLogined }" >
		<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/info"><i class="fas fa-info"></i> INFO</a></li>
		
		<li class="nav-item">
		<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/logout"><i class="fas fa-sign-out-alt"></i> LOGOUT</a></li>
		
		<li class="nav-item">
		<a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/write"><i class="fas fa-pencil-alt"> WRITE</i></a></li>
	
		<li class="nav-item">
		<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/list"><i class="fas fa-list-alt"></i> MEMBER LIST</a></li>
	</c:if>
	
		<li class="nav-item">
		<a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/list"><i class="fas fa-list"></i> 글 목록보기</a></li>
	
	</nav>
</div>