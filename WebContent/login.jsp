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
			<th><button id="memberout">ȸ��Ż��</button></th>
			<th><button id="modify">��������</button></th>
			<th><button id="board">�Խ������� ����</button></th>
		<tr>
	</table>

	
		} else {
	

	<form action="login.do" method="post">
		<table border=1>
			<tr>
				<th colspan=2>ȸ�� �α���</th>
			</tr>
			<tr>
				<th>���̵�:</th>
				<th><input type="text" name="id" id="id"
					placeholder="���̵� �Է��ϼ���"></th>
			</tr>


			<tr>
				<th>��й�ȣ:</th>
				<th><input type="password" name="pw" id="pw" maxlength="10"
					placeholder="��й�ȣ�� �Է��ϼ���"></th>
			</tr>

			<tr>
				<th colspan=2><input type="submit" name="login" id="login"
					value="�α���">
					<button id="sign" type="button">ȸ������</button></th>
			</tr>
		</table>
	</form>
	
		}
	

</body>
</html>