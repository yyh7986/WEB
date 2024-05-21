<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertBoardForm.jsp</title>
<link rel="stylesheet" href="css/board.css">
<script type="text/javascript" src="src/board.js"></script>
</head>
<body>
<div id="main_container">
	<h2>게시글 등록</h2>
	<div class="board">
		<form class="insertBoard" action="board.do" method="post" name="insertBoard">
			<div class="field">
				<label>작성자</label>
				<input type="text" name="userid" value="${loginUser.userid}" readonly>
			</div>
			<div class="field">
				<label>비밀번호</label>
				<input type="password" name="pass" placeholder="게시물 수정 삭제시 필요합니다.">
			</div>
			<div class="field">
				<label>이메일</label>
				<input type="text" name="email" value="${loginUser.email}">
			</div>
			<div class="field">
				<label>제목</label>
				<input type="text" name="title">
			</div>
			<div class="field">
				<label>내용</label>
				<textarea rows="10" cols="100" name="content"></textarea>
			</div>
			<div class="field">
				<input type="submit" value="작성완료" onclick="return boardCheck()">	
			</div>
			<input type="hidden" name="command" value="insertBoard">
		</form>
	</div>
</div>
</body>
</html>