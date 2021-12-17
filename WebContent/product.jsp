<%@page import="DAO.ProductRepository"%>
<%@page import="DTO.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<%-- <jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session"></jsp:useBean> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
		<hr>
	</div>
	<%
	// 넘어온 상품 id 값을 얻어낸다.
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
	// 넘어온 상품 아이디 값을 이용해서 실제 해당하는 Product 객체를 얻고 있다.
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class = "row">
			<div class = "col-md-6">
			<h3><%= product.getPname() %></h3>
			<p><%= product.getDescription() %></p>
			<p><b>상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId() %></span></p>
			<p><b> 제조사 : </b><%=product.getManufacturer() %></p>
			<p><b> 분류 : </b><%=product.getCategory() %></p>
			<p><b> 제고 수 : </b><%=product.getUnitsInStock() %></p>
			<h4><%=product.getUnitPrice() %>원</h4>
			<p><a href="#" class="btn btn-info">상품 주문 &raquo;</a>
			<a href="./products.jsp" class ="btn btn-secondary">상품 목록 &raquo;</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>