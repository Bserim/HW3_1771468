<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	text-align: center;
}

table {
	border: 1px solid #b4c3a0;
	width: 600px;
	height: 60px;
	margin: 0 auto;
	text-align: center;
	background-color: #f3f4ef;
	border-color: #b4c3a0;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #b4c3a0;
}
</style>
</head>

<body>
	<br>
	<h2>[2019년도 2학기]</h2>
	<table>
		<tr bgcolor="#ecede5">
			<th>년도</th>
			<th>학기</th>
			<th>교과목명</th>
			<th>교과구분</th>
			<th>담당교수</th>
			<th>학점</th>
		</tr>
		<c:forEach var="serim" items="${serims}">
			<c:if test="${serim.year eq '2019'}">
				<c:if test="${serim.semester eq '2'}">
					<tr>
						<td><c:out value="${serim.year}"></c:out></td>
						<td><c:out value="${serim.semester}"></c:out></td>
						<td><c:out value="${serim.subject}"></c:out></td>
						<td><c:out value="${serim.division}"></c:out></td>
						<td><c:out value="${serim.professor}"></c:out></td>
						<td><c:out value="${serim.credit}"></c:out></td>
					</tr>
				</c:if>
			</c:if>
		</c:forEach>
	</table>
	<br>
	<a href="${pageContext.request.contextPath}/serims">이전 화면으로 돌아가기</a>
</body>
</html>