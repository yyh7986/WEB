<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>063_ForwardResult.jsp</title>
</head>
<body>
<%
String name = (String)request.getAttribute("name");
// Attribute의 저장데이터 자료형이 Object 이므로 꺼내서 변수에 저장할때 형변환이 필요하다
String age = request.getParameter("age");
%>

<h2>forward 방식으로 이동된 페이지</h2>
<h2>나이 : <%=age %></h2>
<h2>이름 : <%=name %></h2>
</body>
</html>