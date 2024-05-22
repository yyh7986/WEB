<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<%@ include file="sub_image_menu.jsp" %>
		<article>
			<form action="shop.do?command=writeQna" method="post">
				<h2> Q & A Write </h2>
				<div class="field">
					<label>작성자</label>
					<input type="text" name="userid" value="${loginUser.userid}" readonly>
				</div>
				<div class="field" >
					<label>제목</label>
					<input type="text" name="subject">
				</div>
				<div class="field">
					<label>문의 내용</label>
					<textarea rows="10" cols="86" name="content"></textarea>
				</div>
				<div class="btn">
					<input type="submit" value="작성">
				</div>
			</form>
		</article>
</section>
<%@ include file="../footer.jsp" %>