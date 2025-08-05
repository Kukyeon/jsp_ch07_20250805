<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 기존의 존재하는 쿠기 가져오기
		//처음 사이트 방문인 경우 -> cookies = null / 쿠키 유효시간이 경과 후 방문 -> cookies = null
		
		String savedId = ""; // 자동저장될 id
		String savedPw = ""; // 자동저장될 pw
		
		if(cookies != null){ // 쿠키가 존재할때만 쿠키를 추출
			for( Cookie cookie : cookies ){
				if(cookie.getName().equals("saveId")){ // 쿠키값중 이름이 saveId인 쿠키를 추출	
					savedId = cookie.getValue(); // 쿠키에 saveId 이름으로 저장된 실제 값 가져오기 ( tiger )
				}
				if(cookie.getName().equals("savePw")){ // 쿠키값중 이름이 savePw인 쿠키를 추출	
					savedPw = cookie.getValue(); // 쿠키에 savePw 이름으로 저장된 실제 값 가져오기 ( 12345 )
				}
			}
		}
	%>
	<h2>회원 로그인</h2>
	<br>
	<form action="loginOk.jsp" method="post">
		아이디 : <input type="text" name="loginId" value="<%= savedId %>"><br><br>
		비밀번호 : <input type="password" name="loginPw" value="<%= savedPw %>"><br><br>
		<input type="checkbox" name="rememberId" <%= (savedId.isEmpty() ? "" : "checked" ) %>> 자동로그인
		<input type="submit" value="로그인">
	</form>
</body>
</html>