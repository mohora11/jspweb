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
	<h1>${board.boardId }번 글 보기</h1>
	
	<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
	
	제목 : <br>
	<input name="title" id="input1" type="text" value="${board.title }" readonly>
	<br>
	본문 : <br>
	<textarea name="body" id="textarea1" readonly>${board.body }</textarea>
	<br>
	작성자 : <br>
	<input type="text" value="${board.memberName }" readonly>
	<br>
	작성시간 : <br>
	<input type="text" value="${board.timeAgo }" readonly> <br>
	
	<c:if test="${sessionScope.userLogined.id == board.memberId  }" >
		<script>
			$(document).ready(function() {
				$("#button1").click(function() {
					$("#submit1, #submit2").removeAttr("hidden");
					$("#input1, #textarea1").removeAttr("readonly");
				});
				
				$("#submit2").click(function(e) {
					e.preventDefault(); //눌러도 아무일 일어나지않음
					
					if (confirm("삭제 하시겠습니까?")) {
						var path = '${pageContext.request.contextPath }/sample2/board/remove'
						$("#form1").attr("action", path);
						$("#form1").submit();
					}
				});
			});
		
		</script>
		
		<br>
		<input type="number" value="${board.boardId }" name="boardId" hidden >
		<button id="button1" type="button">수정</button>
		<input id="submit1" hidden type="submit" value="전송" >
		<input id="submit2" hidden type="submit" value="삭제" >
	</c:if>
	</form>
	
	<s2:message />
</div>


<c:if test="${not empty sessionScope.userLogined }">
<div class="container mt-5">

	<form action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
		<textarea name="comment"></textarea>
		<br>
		<input name="memberId" value="${sessionScope.userLogined.id }" readonly>
		<br>
		<input name="boardId" value="${board.boardId }" readonly>
		<br>
		<input type="submit" value="댓글작성">
	</form>
</div>
	
</c:if>
<div class="container mt-5">
	<c:forEach items="${comments }" var="comment">
		<script>
			$(document).ready(function() {
				var $form = $('#' + 'comment${comment.id }Form'); 
				var $modifyButton = $('#' + 'comment${comment.id }Button1');
				var $deleteButton = $('#' + 'comment${comment.id }Button2');
				var $submitButton = $('#' + 'comment${comment.id }Button3');
				
				$modifyButton.click(function(e) { //id가 버튼1인놈을 클릭하는 함수
					e.preventDefault();
					$form.find("textarea").removeAttr("readonly"); // form의 textarea가 읽기전용이 해제됨
					$(this).attr("hidden", "hidden");  //this=수정버튼 hidden hidden 이란 이름으로
					$submitButton.removeAttr("hidden"); // 전송버튼이 들어나게 됨
				});
				
				$deleteButton.click(function(e) { //id가 버튼2인놈을 클릭하는 함수
					e.preventDefault(); 
					
					if (confirm("삭제 하시겠습니까?")) {	// 위의 내용의 confirm이 출력됨
			    		$form.attr("action", "${pageContext.request.contextPath }/sample2/comment/remove"); //폼의 attr action이름의 아래의 경로로 가서 일함
						$form.submit(); //폼을 전송한다
					}
				});
			});
		</script>
		<div>
			<form id="comment${comment.id }Form" 
				  action="${pageContext.request.contextPath }/sample2/comment/modify"
				  method="post">
				<input name="commentId" value="${comment.id }" hidden />
				<input name="boardId" value="${board.boardId }" hidden />
				<textarea name="comment" readonly>${comment.comment }</textarea>
				<span>${comment.memberName }</span>
				<span>${comment.timeAgo }</span>
			
				<c:if test="${sessionScope.userLogined.id == comment.memberId  }">
					<button id="comment${comment.id }Button1">수정</button>
					<button id="comment${comment.id }Button3" hidden>전송</button>
					<button id="comment${comment.id }Button2">삭제</button>
				</c:if>
			</form>
		</div>
	</c:forEach>
</div>
</body>
</html>