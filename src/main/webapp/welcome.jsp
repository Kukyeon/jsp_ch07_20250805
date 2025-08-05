<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		//쿠키에 저장된 값 가져오기 
		Cookie[] cookies = request.getCookies(); // 반환타입 -> 쿠키의 배열
		
		for( Cookie cookie : cookies ){
			String cvalue = cookie.getValue();// 쿠키의 값 가져오기
			if(cvalue.equals("tiger")){
			out.println(cvalue + "님 로그인에 성공하셨습니다. <br>");
			}
		}
	%>
</body>
</html>