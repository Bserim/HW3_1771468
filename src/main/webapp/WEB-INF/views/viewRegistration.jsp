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
	<h2>[수강 신청 내역]</h2>
	<table>
		<tr bgcolor="#ecede5">
			<th>년도</th>
			<th>학기</th>
			<th>교과목명</th>
			<th>교과구분</th>
			<th>담당교수</th>
			<th>학점</th>
		</tr>
		<c:forEach var="registration" items="${registrations}">
			<tr>
				<td><c:out value="${registration.year}"></c:out></td>
				<td><c:out value="${registration.semester}"></c:out></td>
				<td><c:out value="${registration.subject}"></c:out></td>
				<td><c:out value="${registration.division}"></c:out></td>
				<td><c:out value="${registration.professor}"></c:out></td>
				<td><c:out value="${registration.credit}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
</body>
</html>