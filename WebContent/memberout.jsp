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
<c:choose>
	<c:when test="${result>0}">
		alert("���� ����");
		session.invalidate();
		location.href = "login.jsp"
	
	</c:when>
	<c:otherwise>
<form action="delete.do" method=post>
	<table>
		
		<tr>
		<th>�����ϰ� �����ø� �ش� ������ ��� ��ȣ�� �Է��ϼ���
		</tr>
		<tr>
		<td><input type=text id=id name=id value="${sessionScope.loginId}" readonly="readonly">
		<td><input type=text id=pw name=pw> 
		<td><input type=submit value="send">
		</tr>
	
	</table>
	</form>
		</c:otherwise>
		
		</c:choose>
</body>
</html>