<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idcheck.jsp</title>
<script type="text/javascript">
	function idOk(userId){
		opener.document.join.userid.value = userId;
		opener.document.join.reid.value = userId;
		self.close();
	}
</script>
<style type="text/css">
body{
	display: flex;
	flex-direction: column;
	height: 100vh;
	align-items: center;
	padding: 20px;
}
</style>
</head>
<body>
<!-- 재검색창 -->
<form action="board.do" style="margin: 20px 0;">
	<input type="hidden" name="command" value="idcheck">
	아이디 : <input type="text" name="userid" value="${userid}"> <!-- value 에 검색된 아이디 표시 -->
	<input type="submit" value="중복체크">
</form>

<!-- 사용 가능 여부 -->
<div>
	<c:choose>
		<c:when test="${result==1}">
			<script type="text/javascript">
			opener.document.join.userid.value = "";
			opener.document.join.reid.value = "";
			</script>
			${userid} 는 이미 사용 중인 아이디입니다.
		</c:when>
		<c:otherwise>
			${userid} 는 사용 가능한 아이디입니다.
			<input type="button" value="ID사용하기" onclick="idOk('${userid}')">
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>