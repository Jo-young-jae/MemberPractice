<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="sign.do" method="post">
	<table border=1>
		<tr>
			<td colspan=2 align=center>회원가입</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type=text name="id" id="id" placeholder="중복확인버튼을 눌러주세요">
				<button id=duplcheck>중복확인</button></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type=password name=pw id="pw" placeholder=패스워드입력></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type=text name=name id="name"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>
			 <input type=text name="phone" id="phone"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type=text name="email" id="email"></td>
		</tr>
		<tr>
			<td colspan=2 align=center><button id="sign">회원가입</button>
		</tr>




	</table>
</form>

	<script>
		
	</script>







</body>
</html>