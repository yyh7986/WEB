<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Session.jsp</title>
</head>
<body>
<%
// 세션은 서버에 항시 존재하는 객체이며, 아래와 같이 필요할 때 직접 사용이 가능하다
session.setAttribute("id", "hong");
session.setAttribute("pwd", "1234");
session.setAttribute("age", 20);
%>
</body>
</html>