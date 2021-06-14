<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$("#input2, #input3, #input4").removeAttr("readonly");
			$("#submit1").removeAttr("hidden");
		});

		/*$("#submit2").click(function(e) {
			e.preventDefault();
			console.log("submit2 clicked....");

			var con = confirm("탈퇴 하시겠습니까?");

			console.log(con);

			if (con) {
				$("#form2").submit();
			}
		}); */
	});
</script>
</head>
<body>
	<s2:navbar></s2:navbar>
	<div class="container">
		<form id="form1"
			action="${pageContext.request.contextPath }/sample2/member/modify"
			method="post">
			id : <br> 
			<input id="input1" type="text" name="id" value="${member.id }" readonly> <br> 
			pw : <br> 
			<input id="input2" type="password" name="password" value="${member.password }" readonly> <br> 
			name : <br>
			<input id="input3" type="text" name="name" value="${member.name }" readonly> <br> 
			birth day : <br> 
			<input id="input4" type="date" name="birth" value="${member.birth }" readonly> <br>
			<button id="button1" type="button">수정</button>
			<input hidden type="submit" id="submit1" value="전송">
		</form>

		<s2:message></s2:message>
	</div>
	
	<div>
	작성한 게시물 : <span>${member.numberOfBoard }</span>개
	<br>
	작성한 댓글 : <span>${member.numberOfComment }</span>개
	</div>
	
	<div class="container">
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#staticBackdrop">탈퇴</button>

		<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">주의</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">정말 탈퇴하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
						<form id="form2"
							action="${pageContext.request.contextPath }/sample2/member/remove" method="post">
							<button id="submit2" type="submit" class="btn btn-primary">탈퇴</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>