<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //request 한글 인코딩 utf-8로 설정
		
		String pid = request.getParameter("id"); // id 값 가져오기
		String ppw = request.getParameter("name");
		String pname = request.getParameter("pw");
		String pgender = request.getParameter("gender");
		String home = request.getParameter("address");
		String []  phobby = request.getParameterValues("hobby"); //취미가져오기 (배열로 받음)
		String intro = request.getParameter("introduct");
	
	%>
	
	<h2>회원가입정보</h2>
	* 아이디 : <%= pid %><br>
	* 비밀번호 : <%= ppw %> <br>
	* 이름 :  <%= pname %> <br>
	* 성별 : <%= pgender %><br>
	* 고향 : <%= home %><br> 
	* 취미 :  
	<%
				if(phobby != null )
				{
				for (int i = 0 ; i<=2 ; i++)
				{
					out.println(phobby[i]);
				}
				}
	%>
	* 자기소개 : <%= intro %><br>

</body>
</html>