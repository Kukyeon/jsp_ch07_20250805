<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키의 유효시간 설정</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies ){
			cookie.setMaxAge(60*60); // 쿠키의 유효시간 설정 , 초 단위 , 60*60= 1시간
				response.addCookie(cookie);
		}
		for(Cookie cookie : cookies ){
			cookie.setMaxAge(0); // 쿠키의 유효시간 설정 , 0으로 설정하면 쿠키 삭제
				response.addCookie(cookie); // 클라이언트에게 가져와서 변경된 쿠키 다시 보내기
		}
		
	
	%>
</body>
</html>