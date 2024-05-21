<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- main.jsp의 내용 -->

<div id = "main_img">
   <img src = "images/main_img.jpg">
</div>
<!-- 신상품 -->
<div id="NewItem">
	<h2>New Item</h2>
	<div class = "products"> <!-- css 양식 통일을 위해서 -->
		<c:forEach items="${newList}" var="productVO" varStatus="status">
			<c:choose>
				<c:when test="${status.index == 0}">
					<div class="left">
				</c:when>
				<c:when test="${status.index == 2}">
					<div class="left">
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
				<div id="item">
					<div>
						<a href="productDetail?pseq=${productVO.pseq}">
							<img src="product_images/${productVO.image}">
						</a>
					</div>
					<div>
						<a href="productDetail?pseq=${productVO.pseq}">
							${productVO.name}-
							<fmt:formatNumber value="${productVO.price2}" type="currency"></fmt:formatNumber>
						</a>
					</div>
				</div>
				<c:choose>
					<c:when test="${status.index == 1}">
						</div>
					</c:when>
					<c:when test="${status.index == 3}">
						</div>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
		</c:forEach>
	</div>
</div>

<!-- 베스트 상품 -->
<div id="BestItem">
	<h2>Best Item</h2>
	<div class = "products">
		<c:forEach items="${bestList}" var="productVO" varStatus="status">
			<c:choose>
				<c:when test="${status.index == 0 }">
					<div class="left">
				</c:when>
				<c:when test="${status.index == 2 }">
					<div class="left">
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
				<div id="item">
					<div>
						<a href="productDetail?pseq=${productVO.pseq}">
							<img src="product_images/${productVO.image}">
						</a>
					</div>
					<div>
						<a href="productDetail?pseq=${productVO.pseq}">
							${productVO.name}-
							<fmt:formatNumber value="${productVO.price2}" type="currency"></fmt:formatNumber>
						</a>
					</div>
				</div>
			<c:choose>
				<c:when test="${status.index == 0}">
					</div>
				</c:when>
				<c:when test="${status.index == 2}">
					</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
</div>
<%@ include file = "../footer.jsp"%>

</body>
</html>