<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script>
		window.onload = function() {
			document.getElementById("sign").onclick = function() {
				location.href = "sign.jsp";
			}
		}
	</script>

	
		if (${result}) {
	


	<table border=1>

		<tr>
			<th colspan=3></th> 
		<tr>
		<tr>
			<th><button id="memberout">회원탈퇴</button></th>
			<th><button id="modify">정보수정</button></th>
			<th><button id="board">게시판으로 가기</button></th>
		<tr>
	</table>

	
		} else {
	

	<form action="login.do" method="post">
		<table border=1>
			<tr>
				<th colspan=2>회원 로그인</th>
			</tr>
			<tr>
				<th>아이디:</th>
				<th><input type="text" name="id" id="id"
					placeholder="아이디를 입력하세요"></th>
			</tr>


			<tr>
				<th>비밀번호:</th>
				<th><input type="password" name="pw" id="pw" maxlength="10"
					placeholder="비밀번호를 입력하세요"></th>
			</tr>

			<tr>
				<th colspan=2><input type="submit" name="login" id="login"
					value="로그인">
					<button id="sign" type="button">회원가입</button></th>
			</tr>
		</table>
	</form>
	
		}
	

</body>
</html>