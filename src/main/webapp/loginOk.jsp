<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%!
		String mid;
		String mpw;
	%>
	<%
		request.setCharacterEncoding("utf-8");
		
		mid = request.getParameter("loginId");
		mpw = request.getParameter("loginPw");
		
		if(mid.equals("tiger") && mpw.equals("12345")){ // 참이면 로그인 성공
			session.setAttribute("sid", mid); // 세션의 아이디값 저장 -> 로그인성공
			Cookie cookie = new Cookie("cid", mid); // 쿠키생성, 기본 생성자가 없어서 생성시, 무언가 넣어줘야함
			response.addCookie(cookie); // 생성한 쿠키를 클라이언트에게 전송
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	
	
	%>
</body>
</html>