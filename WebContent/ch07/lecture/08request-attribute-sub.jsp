<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User" %>

<%
User member = (User) request.getAttribute("member");
String name = member.getName();
int age = member.getAge();
String address = member.getAddress();
%>

<div>
	이름 : <%= member.getName() %> <br>
	나이 : <%= member.getAge() %> <br>
	주소 : <%= member.getAddress() %> <br>

</div>
