<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>

<html>
<head>
<!-- 부트스트랩을 css 로 다운하겠다. -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>웹 쇼핑몰</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		String greeting ="개발자 쇼핑몰에 오신것을 환영합니다.";
		String tagline ="Welcome to Web Market";
	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4"><%= greeting %></h1>
		</div>
		<hr>
	</div>
	<div class="container">
		<div class="text-center">
			<h3><%= tagline%></h3>
			<%
			// 웹사이트에 refresh 기능을 추가하였다.
				response.setIntHeader("Refresh", 5);
			// 접속 시간을 구하기 위한 방법
				Calendar calendar = Calendar.getInstance();
				int hour = calendar.get(Calendar.HOUR_OF_DAY);
				int minute= calendar.get(Calendar.MINUTE);
				int second = calendar.get(Calendar.SECOND);
				int am_pm = calendar.get(Calendar.AM_PM);
				String ampm = null;
				if(am_pm == 0){
					ampm="오전";
				}else{
					ampm="오후";
				}
				String connectTime=hour+":"+minute+":"+second + " "+ampm;
				out.println(connectTime);
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>