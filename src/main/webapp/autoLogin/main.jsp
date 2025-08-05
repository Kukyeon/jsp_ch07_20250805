<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 쿠키 가져오기
		String cid = "";
		String cpw = "";
		
		
		if(cookies != null ){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("saveId")){ // 쿠키의 saveId 값 가져오기
					cid = cookie.getValue();
				}
				if(cookie.getName().equals("savePw")){	 // 쿠키의 savePw 갑 가져오기
					cpw = cookie.getValue();
				}
			}
		}
		
		// 로그인 성공처리
		if(cid.equals("tiger") && cpw.equals("12345")){
			session.setAttribute("user", cid);
			out.println(cid + "이(가) 자동 로그인 되었습니다.");
		} else {
			response.sendRedirect("login.jsp");
		}
		
		
	%>
</body>
</html>