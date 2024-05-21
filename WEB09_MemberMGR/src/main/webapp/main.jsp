<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<script type="text/javascript">
	function deleteConfirm(userid){
		const ans = confirm("정말 삭제할까요?");
		if(ans){
			location.href = "delete.do?id=" + userid;
		}else{
			return;
		}
	}
</script>
</head>
<body>

<c:if test="${delete=='ok' }">
	<script>
		alert("삭제되었습니다.");
	</script>
</c:if>

<table width="800" bgcolor="black" celspacing="1">
	<tr bgcolor="white" align="center">
		<td>아이디</td>
		<td>이름</td>
		<td>비밀번호</td>
		<td>전화번호</td>
		<td>수정</td>
		<td>삭제</td>
	</tr>
	<c:forEach items="${memberList}" var="member">
		<tr bgcolor="white" align="center">
			<td>${member.id}</td>
			<td>${member.name}</td>
			<td>${member.pwd}</td>
			<td>${member.phone}</td>
			<td><input type="button" value="수정" onclick="location.href='update.do?id=${member.id}'"></td>
			<td><input type="button" value="삭제" onclick="deleteConfirm('${member.id}')"></td>
		</tr>
	</c:forEach>
</table>
<input type="button" value="멤버추가" onclick="location.href='insert.do'">
</body>
</html>