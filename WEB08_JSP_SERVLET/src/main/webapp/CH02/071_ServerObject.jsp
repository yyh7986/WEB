<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>071_ServerObject.jsp</title>
</head>
<body>
<%
pageContext.setAttribute("name", "page man");	// 현재페이지까지
request.setAttribute("name", "request man");	// 현재페이지까지 + 포워딩된 다음페이지까지
session.setAttribute("name", "session man");	// 브라우저가 닫힐때까지
application.setAttribute("name", "application man");	// 서버가 꺼질때까지

System.out.print("firstPage.jsp : ");
System.out.print("First의 pageContext 객체 : " + pageContext.getAttribute("name"));
System.out.print("First의 request 객체 : " + request.getAttribute("name"));
System.out.print("First의 session 객체 : " + session.getAttribute("name"));
System.out.print("First의 application 객체 : " + application.getAttribute("name"));

// response.sendRedirect("072_ServerObject.jsp");
RequestDispatcher rd = request.getRequestDispatcher("072_ServerObject.jsp");
rd.forward(request, response);
%>
</body>
</html>