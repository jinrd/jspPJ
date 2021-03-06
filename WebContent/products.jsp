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
<!-- 부트스트랩을 css 로 다운하겠다. -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>.상품목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">상품 목록</h1>
		</div>
		<hr>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
	// 상품 목록을 다 가져온다.
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0 ; i <listOfProducts.size();i++){
					Product product = listOfProducts.get(i);
			%>
			<div class ="col-me-4">
				<img src="c:\\upload\\<%=product.getFilename() %>" style="width: 100%" alt="" />
				<h3><%=product.getPname() %></h3>
				<p><%= product.getDescription() %></p>
				<p><%= product.getUnitPrice() %> 원</p>
				
				<!-- 상품의 아이디에 대한 상세 정보 페이지를 연결시키기 위해서 아래 코드를 작성하였다. -->
				<p><a href="./product.jsp?id=<%=product.getProductId() %>"
				class="btn btn-secondary" role ="button">상세정보 &raquo; </a></p>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>




























