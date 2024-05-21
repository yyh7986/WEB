<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_removeSession.jsp</title>
</head>
<body>
<%
session.setAttribute("s_name1", "첫번째 값 -ㅇ-");
session.setAttribute("s_name2", "두번째 값 -ㅇ-");
session.setAttribute("s_name3", "세번째 값 -ㅇ-");

out.print("<3> >> 세션값을 삭제하기 전 << </h3>");
String value = (String)session.getAttribute("s_name1");
out.println("<h3>s_name1 : " + value + "</h3>");
value = (String)session.getAttribute("s_name2");
out.println("<h3>s_name2 : " + value + "</h3>");
value = (String)session.getAttribute("s_name3");
out.println("<h3>s_name3 : " + value + "</h3>");

session.removeAttribute("s_name2");
out.print("<h3> >> 세션값 한개를 삭제한 경우 << </h3>");
value = (String)session.getAttribute("s_name1");
out.println("<h3>s_name1 : " + value + "</h3>");
value = (String)session.getAttribute("s_name2");
out.println("<h3>s_name2 : " + value + "</h3>");
value = (String)session.getAttribute("s_name3");
out.println("<h3>s_name3 : " + value + "</h3>");

session.invalidate();

out.print("<h3> >> 세션값을 모두 삭제한 경우 << </h3>");
out.print("세션이 모두 삭제 되었습니다");
out.println("<h3>s_name1 : " + value + "</h3>");
out.println("<h3>s_name2 : " + value + "</h3>");
out.println("<h3>s_name3 : " + value + "</h3>");
%>
</body>
</html>