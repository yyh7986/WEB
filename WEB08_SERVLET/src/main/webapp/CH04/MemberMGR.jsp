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
<title>MemberMGR.jsp</title>
<%!
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/scott";
	String id = "root";
	String pw = "adminuser";
	
	String sql = "select * from members";
%>
</head>
<body>
<table width="700" bgcolor="black" cellspacing="1">
	<tr bgcolor="#d4a373">
		<th>아이디</th><th>암호</th><th>이름</th><th>전화번호</th><th>수정</th><th>삭제</th>
	</tr>
	<%
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pw);
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				out.print("<tr bgcolor='#faedcd'>");
				
				out.print("<td align='center'>" + rs.getString("id") + "</td>");
				out.print("<td align='center'>" + rs.getString("pwd") + "</td>");
				out.print("<td align='center'>" + rs.getString("name") + "</td>");
				out.print("<td align='center' width='150'>" + rs.getString("phone") + "</td>");
				/* out.print("<td align='center'>"
				+ "<input type='button' value='수정'"
				+ "onclick='location.href=\"updateForm.jsp?id="
				+ rs.getString("id") + "\"' /></td>"); */
				out.print("<td align='center'>"
                  + "<input type='button' value='수정' "
                  + " onClick=\"location.href='updateForm.jsp?id=" + rs.getString("id") + "'\" />"
                  + "</td>");
				out.print("<td align='center'>"
				+ "<input type='button' value='삭제'"
				+ "onclick=\"location.href='deleteMember.jsp?id=" + rs.getString("id") + "'\" />"
				+ "</td>");
                  
				
				out.print("</tr>");
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
</table>
<input type="button" onclick="location.href='insertForm.jsp'" value="멤버 추가">
</body>
</html>