<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
<form action="modify.do" method=post>
	<table>
	<tr>
	<td>아이디</td>
	<td><input type=text name ="id" value="${sessionScope.loginId}" readonly="readonly"></td>
	</tr>
	<tr>
	<td>pw</td>
	<td><input type=text name ="pw"></td>
	</tr>
	<tr>
	<td>name</td>
	<td><input type=text name ="name"></td>
	</tr>
	<tr>
	<td>email</td>
	<td><input type=text name ="email"></td>
	</tr>
	<tr>
	<td>phone</td>
	<td><input type=text name ="phone"></td>
	</tr>
	<tr>
	<td><input type="submit">수정</td>
	</tr>
	</table>
	</form>
	
	
	
	
	
	
	
</body>
</html>