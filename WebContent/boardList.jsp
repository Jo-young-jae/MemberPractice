<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		document.getElementById("write").onclick = function() {
			location.href = "write.jsp";
		}
	}
</script>
</head>
<body>
	<table border=1 width=700 height=700 align=center>
		<tr>
			<th colspan=5 height=30>자유게시판</th>
			
		</tr>
		<tr height=30 align=center>
			<td width=40></td>
			<td width=400>제목</td>
			<td width=100>작성자</td>
			<td>작성일</td>
		</tr>
		<c:choose>
			<c:when test="${result.size() > 0}">
				<c:forEach var="item" items="${result}">
					<tr>
						<td>${item.no}
						<td><a href="boardView.do?no=${item.no}">${item.title}</a>
						<td>${item.writer}
						<td>${item.write_date}
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan=5 height=600px align=center>표시할 내용이 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>

		<tr>
			<td colspan=5 align=center>dao.getPageNavi(currentPage)</td>
		</tr>
		<tr>
			<td colspan=5 align=right><input type=button id=write
				value="글 쓰기"></td>
		</tr>
	</table>
</body>

</html>