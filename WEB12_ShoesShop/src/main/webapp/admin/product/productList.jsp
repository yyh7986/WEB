<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="/admin/header.jsp" %>

<!-- 경로가 '/' 로 시작하면 가장 상위 폴더로부터 표시되는 절대 경로로 인식됩니다. 최상위 폴더는 webapp -->
<!-- 아래와 같이 상대경로로 표시할 수도 있습니다 -->
<%-- <%@ include file="../sub_menu.jsp" %> --%> <%@ include
file="/admin/sub_menu.jsp" %>

<article>
  <div class="tb">
    <div class="row">
      <div class="col" style="display: flex">
        상품명 : <input type="text" name="key" value="${key}" />
        &nbsp;&nbsp;&nbsp;
        <input
          class="btn"
          type="button"
          name="btn_search"
          value="검색"
          onclick=""
        />&nbsp;&nbsp;&nbsp;
        <input type="button" style="margin-left: auto" value="상품등록" />
      </div>
    </div>
    <div class="row">
      <div class="coltitle">번호</div>
      <div class="coltitle">상품명</div>
      <div class="coltitle">원가</div>
      <div class="coltitle">판매가</div>
      <div class="coltitle">등록일</div>
      <div class="coltitle">사용유무</div>
    </div>
    <c:forEach items="${productList}" var="productVO">
      <div class="row">
        <div class="col">${productVO.pseq}</div>
        <div class="col">${productVO.name}</div>
        <div class="col"><fmt:formatNumber value="${productVO.price1}" /></div>
        <div class="col"><fmt:formatNumber value="${productVO.price2}" /></div>
        <div class="col"><fmt:formatDate value="${productVO.indate}" /></div>
        <div class="col">
          <c:choose>
            <c:when test="${productVO.useyn=='N'}">미사용</c:when>
            <c:otherwise>사용</c:otherwise>
          </c:choose>
        </div>
      </div>
    </c:forEach>
    <jsp:include page="/admin/paging/paging.jsp">
    	<jsp:param value="shop.do?command=adminProductList" name="address"/>
    </jsp:include>
  </div>
</article>

<%@ include file="/admin/footer.jsp" %>
