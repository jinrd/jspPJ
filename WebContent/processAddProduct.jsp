<%@page import="DTO.Product"%>
<%@page import="DAO.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

// addProduct.jsp 에서 사용자가 입력한 부분을 받아서 저장을 하고 있다.
	String productId = request.getParameter("productId");
	String name= request.getParameter("name");
	String unitPrice= request.getParameter("unitPrice");
	
	String description= request.getParameter("description");
	String manufacturer= request.getParameter("manufacturer");
	String category= request.getParameter("category");
	String unitsInstock= request.getParameter("unitsInstock");
	String condition= request.getParameter("condition");
	
	Integer price;
	long stock;
	// 단가입력창에 미 입력시
	if(unitPrice.isEmpty()){
		price = 0; // 자동 박싱
	}else{
		// String 을 숫자로 변환시키고 있다.
		price = Integer.valueOf(unitPrice);
	}
	
	// 재고 수량 입력창에 미입력시
	if(unitsInstock.isEmpty()){
		stock = 0; // 자동 박싱
	}else{
		// String 을 long 타입으로 변환시키고 있다.
		stock = Long.valueOf(unitsInstock);
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	Product newProduct = new Product();
	
	// product 객체에 사용자가 입력한 내용을 저장을 하고 있다.
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	
	
	// ArrayList 에 새 상품을 추가하고 있다.
	dao.addProduct(newProduct);
	
	System.out.println(description);
	
	// 강제로 페이지 이동을 시키고 있다.
	response.sendRedirect("products.jsp");
%>















