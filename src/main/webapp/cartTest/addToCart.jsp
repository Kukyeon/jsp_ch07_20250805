<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 상품 추가</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String product = request.getParameter("product"); // 장바구니에 추가할 상품 이름
		
		Cookie[] cookies = request.getCookies(); // 기존 쿠기 가져오기
		
		String savedCart = "";
		String newcart = "";
		
		if(cookies != null){ //쿠키가 null 이아닐때만 -> 기존에 쿠키에 저장된 상품목록 가져오고자함
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("cart")){
					savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품목록
				}
			}
		}
		
		if(savedCart == ""){
			newcart = product;
		} else {
			newcart = savedCart + "/" + product;
		}
		
		Cookie cartCookie = new Cookie("cart", newcart);
		cartCookie.setMaxAge(60*60*24*7); // 7일간 저장
		response.addCookie(cartCookie);
	%>
	
	
	<a href="productList.jsp">상품 추가하기</a>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>