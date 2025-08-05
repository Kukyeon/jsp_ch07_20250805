<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		String savedCart = "";
		
		if(cookies != null){ //쿠키가 null 이아닐때만 -> 기존에 쿠키에 저장된 상품목록 가져오고자함
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("cart")){
					savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품목록
				}
			}
		}
		
		if(savedCart == null){
			out.println("장바구니가 비어있습니다");
		} else {
			out.println(savedCart); // 상품목록 출력
		}
		
	%>
</body>
</html>