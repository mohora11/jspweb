<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<s1:navbar></s1:navbar>

<div class="container">
<form action="${pageContext.request.contextPath }/sample1/remove" method="post">
	<div class="form-check">
  		
	<table class="table">
		<thead>
			<tr>
				<th>check</th>
				<th>#</th>
				<th>제목</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="board" varStatus="status">
				<tr>
					<td><input name="removeIndex" class="form-check-input position-static" type="checkbox" value="${status.index }" aria-label="asdf"></td>
					<td>${status.count }</td>
					<td>
						<a href="detail?index=${status.index }">
							${board.title }
						</a>
					</td>
					<td>${board.name }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<input type="submit" id="submit2" class="btn btn-primary" value="삭제" />
</form>
</div>
</body>
</html>