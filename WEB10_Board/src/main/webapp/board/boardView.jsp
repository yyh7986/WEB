<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div id="main_container">
	<h1>게시글 상세 보기</h1>
	<div class="board">
		<div class="field">
			<div class="label">작성자</div>
			<div class="text">${board.userid }</div>
		</div>
		<div class="field">
			<div class="label">이메일</div>
			<div class="text">${board.email }</div>
		</div>
		<div class="field">
			<div class="label">조회수</div>
			<div class="text">${board.readcount}</div>
		</div>
		<div class="field">
			<div class="label">작성일</div>
			<div class="text">${board.writedate}</div>
		</div>
		<div class="field" style="margin-bottom:15px;">
			<div class="label">제목</div>
			<div class="text" >${board.title }</div>
		</div>
		<div class="field">
			<div class="label">내용</div>
			<div class="text"><pre>${board.content }</pre></div>
		</div>
		<div class="login-button">
            <input type="button" class="btn-login" value="수정"
            	onclick="location.href='board.do?command=updateBoardForm&num=${board.num}'">
            <input type="button" class="btn-login" value="삭제" onClick="deleteBoard('${board.pass}' , '${board.num}')"/>
            <input type="button" class="btn-login" value="목록"
            	onclick="location.href='board.do?command=main'">            
        </div>
	</div>
	<div class="reply">
		<div class="reply_row">
			<div class="reply_col reply_title">작성자</div>
			<div class="reply_col reply_title">작성일시</div>
			<div class="reply_col reply_title">댓글</div>
			<div class="reply_col reply_title">삭제</div>
		</div>
		<c:forEach items="${replyList }" var="reply">
		<div class="reply_row">
			<div class="reply_col">${reply.userid }</div>
			<div class="reply_col">
				<fmt:formatDate value="${reply.writedate }" pattern="MM/dd hh:mm"/>
			</div>
			<div class="reply_col">${reply.content }</div>
			<div class="reply_col"><input type="button" value="삭제"></div>
		</div>
		</c:forEach>
	</div>
</div>
</body>
</html>