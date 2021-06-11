<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>


<title>Insert title here</title>
</head>
<body>
<s2:navbar></s2:navbar>
<div class="container">
	<h1>글 목록 <small class="text-muted"> 전체글 [${totalNum }]개</small></h1>
	<s2:message></s2:message>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성시간</th>
					<th>조회수</th>
					
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${boards }" var="board" varStatus="status">
					<tr>
						<td>${board.boardId }</td>
						<td>
						<a href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId}">
						${board.title }
						</a>
							<c:if test="${board.numberOfComment != 0 }">
								<span>[${board.numberOfComment }]</span>
							</c:if>
						</td>
						<td>${board.memberName }</td>
						<td>${board.timeAgo }</td> 
						<td>${board.hit }</td>
					</tr>	
				</c:forEach>
			</tbody>
		</table>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:forEach var="i" begin="1" end="${(totalNum / 10) + ( 1 - ( (totalNum / 10) % 1 ) ) % 1 }">
			    	<li class="page-item"><a class="page-link" href="<%= request.getContextPath()%>/sample2/board/list?page=${i }">${i }</a></li>
			    	
				</c:forEach>
		  	</ul>
		</nav>

</div>
</body>
</html>