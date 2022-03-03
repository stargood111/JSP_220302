<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<script type="text/javascript">
function checkInput()
{
	var f = document.dataInput;
	if(f.id.value == "" )
	{	
		alert("아이디가 입력되지 않았습니다. 다시 입력해주세요!");
        f.id.focus();
        return false;
	}
	else if(f.id.value.length < 8 || f.id.value.length >= 16)
	{	
		alert("아이디는 8자 이상 16자 이하이어야 합니다.");
        f.id.focus();
        return false;
	}
	else if(f.name.value == "")
	{	
		alert("이름이 입력되지 않았습니다. 다시 입력해주세요!");
        f.name.focus();
        return false;
	}
	else if(f.pw.value == "")
	{	
		alert("비밀번호가 입력되지 않았습니다. 다시 입력해주세요!");
        f.pw.focus();
        return false;
	} 
	else if(f.pw.value.length  < 4 || f.pw.value.length > 13)
	{	
		alert("아이디는 5자 이상 12자 이하이어야 합니다.");
        f.pw.focus();
        return false;
	} 
	else return true;
	
	
}
</script>

</head>
<body>
 
	Home > Login <hr>
	<form action="Login.jsp" method = "get" name="dataInput"  onsubmit = "return checkInput()">
	<fieldset style = "width : 250px" > 
		<legend>회원 로그인</legend>
	    	ID :  <br>
		    <input type = "text" name = "id"> <br><br>
		    이름: <br>
		    <input type ="text" name = "name"> <br><br>
		    PASSWORD : <br>
		     <input type = "password" name = "pw"> <br> <br>
		     성별 : <br>
		     <input type = "radio" name = "gender" value = "남성">남
		     <input type = "radio" name = "gender" value = "여성">여 <br><br>
		     취미 : <br>
		     <input type ="checkbox" name = "hobby" value = "운동">운동
		     <input type ="checkbox" name = "hobby" value = "독서">독서
		     <input type ="checkbox" name = "hobby" value = "영화감상">영화감상 <br><br>
		     <hr>
		     고향 : <br>
		     <select name ="address">
		    	<option>=== 선택 ===</option>
		    	<option value = "서울">서울특별시</option>
		    	<option value  = "인천">인천광역시</option>
		    	<option value = "부산">부산광역시</option>
		     </select><br>
		     자기소개 : <br>
		     <textarea cols = "30" rows = "5" name = "introduct">
		     
		     </textarea>
		     <hr>
			 &nbsp;<input type = "submit" value = "Login" >&nbsp;
			 <input type = "reset" value = "Cancel">
     </fieldset>
</form>

</body>
</html>