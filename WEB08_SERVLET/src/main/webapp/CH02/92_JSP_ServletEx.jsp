<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>92_JSP_ServletEx.jsp</title>
</head>
<body>

<%
String id = (String) request.getAttribute("id");
String pwd = (String)request.getAttribute("pwd");
String gender = (String)request.getAttribute("gender");			
String content = (String)request.getAttribute("content");
String [] itemName = (String [])request.getAttribute("item");
String job = (String)request.getAttribute("job");
%>
<h1><%= request.getAttribute("name") %>(<%= request.getParameter("id") %>)님의 정보</h1>
<h2>성별 : <%=request.getAttribute("gender") %></h2>
<h2>하고싶은말 : <%=content %></h2>
<h2>구입항목 : 
<%
	for(String item : itemName)
		out.print(item + " ");
%></h2>
<h2>직업 : <%=job %></h2>
</body>
</html>