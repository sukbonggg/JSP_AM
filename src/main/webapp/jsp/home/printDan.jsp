<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String inputDan = request.getParameter("dan");

if(inputDan==null) {
	inputDan="1";
}
String inputlimit = request.getParameter("limit");

if(inputlimit==null) {
	inputlimit="9";
}

String color = request.getParameter("color");


int dan = Integer.parseInt(inputDan);
int limit = Integer.parseInt(inputlimit);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="color:<%=color%>;">== <%=dan %>단 출력 ==</div>
	<% for(int i=1; i <= limit;  i++){ %>
		<div><%=dan %>*<%=i %>=<%=dan*i%></div>
	<% } %>
</body>
</html>