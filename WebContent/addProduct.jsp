<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<!-- 점보트론은 대형전광판이라는 의미를 지니고 있다. 
	점보트론 안에는 다양한 컴포넌트(텍스트, 이미지, 회사로고등) 가 포함이 가능하다.-->
	<div class="jumbotron">
		<div class ="container">
			<h1 class="display-3">상품등록</h1>
		</div>
	</div>
	<div class="container">
		<!-- class = form-horizontal 은 폼요소들이 수평적으로 배치가 되도록 해준다. -->
		<form name ="newProduct" action="./processAddProduct.jsp" class="form-horizomtal" method="post">
			<div class="form-group row">
			<!-- 화면 크기가 768px 이상일 때 col-sm-? 이 부분이 적용이 되고, div요소의 block 특성에 의해서 100 %의 너비를 가지면
			수직으로 쌓이게 만들어준다.-->
				<label class="col-sm-2"><b>상품코드</b></label>
				<div class ="col-sm-3">
					<input type="text" name="productId" class="form-control" placeholder="상품코드를 입력하세요">
				</div>
			</div>
			
			<div class ="form-group row">
				<label class="col-sm-2"><b>상품명</b></label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" placeholder="상품명을 입력하세요">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2"><b>가격</b></label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control" placeholder="가격을 입력하세요">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2"><b>상세정보</b></label>
				<div class="col-sm-3">
					<input type="text" name="description" class="form-control" placeholder="상품설명을 입력하세요">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2"><b>제조사</b></label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" placeholder="제조사 입력하세요">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2"><b>분류</b></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" placeholder="분류를 입력하세요">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2"><b>재고</b></label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control" placeholder="분류를 입력하세요">
				</div>
			</div>
			<div class ="form-group row">
				<label class="col-sm-2"><b>상태</b></label>
				<div class="col-sm-5">
					<input type="radio" name = "condition" value="New"> 신규제품
					<input type="radio" name = "condition" value="Old"> 중고제품
					<input type="radio" name = "condition" value="Refurbished"> 리퍼제품
				</div>
			</div>
			
			<div class ="form-group row">
			<!-- offset지정은 col의 2만큼 띄워라 -->
				<label class="col-sm-offset-2 col-sm-10"><b>분류</b></label>
				<div class="col-sm-3">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
</body>
</html>