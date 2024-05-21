<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%!
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/scott";
String id = "root";
String pw = "adminuser";

String sql = "select * from members where id=?";
%>
</head>
<body>

<%
String userid = request.getParameter("id");
String name = null;
String phone = null;
try{
	Class.forName(driver);
	con = DriverManager.getConnection(url, id, pw);
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, userid);
	rs = pstmt.executeQuery();
	if(rs.next()){
		name = rs.getString("name");
		phone = rs.getString("phone");
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(con!=null) con.close();
		if(pstmt!=null) pstmt.close();
		if(rs!=null) rs.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>

<h2>회원 정보 수정</h2>
<form method="post" action="updateMember_do.jsp">
	<table>
		<tr>
			<th>아이디</th>
			<td>
				<%-- 첫번째 방법
				<input type="text" name="id" value="<%= userid%>" readonly>				
				 --%>
				<%-- 두번째 방법 
				 <%= userid%><input type="hidden" name="id" value="<%= userid%>" />				
				--%>
				<input type="text" name="newid" value="<%= userid%>">
				<input type="hidden" name="oldid" value="<%= userid%>">
			</td>
		</tr>
		<tr>
			<th>암호</th>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value="<%= name%>"></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="phone" value="<%= phone%>"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<input type="reset" value="취소">
				<input type="button" value="돌아가기" onclick="location.href='MemberMGR.jsp'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>