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
	width: 400px;
	height: 60px;
	margin: auto;
	text-align: center;
	background-color: #f3f4ef;
	border-color: #b4c3a0;
}

th, td {
	border: 1px solid #b4c3a0;
}
</style>
</head>

<body>
	<br>
	<h2>[학기별 이수 학점 조회]</h2>
	<table>
		<c:forEach var="serim" items="${serims}">
			<c:if test="${serim.year eq '2019'}">
				<c:if test="${serim.semester eq '1'}">
					<c:set var="sum1" value="${sum1+serim.credit}"></c:set>
				</c:if>
				<c:if test="${serim.semester eq '2'}">
					<c:set var="sum2" value="${sum2+serim.credit}"></c:set>
				</c:if>
			</c:if>

			<c:if test="${serim.year eq '2020'}">
				<c:if test="${serim.semester eq '1'}">
					<c:set var="sum3" value="${sum3+serim.credit}"></c:set>
				</c:if>
				<c:if test="${serim.semester eq '2'}">
					<c:set var="sum4" value="${sum4+serim.credit}"></c:set>
				</c:if>
			</c:if>
		</c:forEach>

		<c:set var="col_sum" value="0" />

		<tr bgcolor="#ecede5">
			<th>년도</th>
			<th>학기</th>
			<th>취득학점</th>
			<th>상세보기</th>
		</tr>
		<tr>
			<td>2019</td>
			<td>1</td>
			<td><c:out value="${sum1}"></c:out></td>
			<c:set var="col_sum" value="${col_sum+sum1}"></c:set>
			<td><a href="${pageContext.request.contextPath}/result1">링크</a></td>
		</tr>
		<tr>
			<td>2019</td>
			<td>2</td>
			<td><c:out value="${sum2}"></c:out></td>
			<c:set var="col_sum" value="${col_sum+sum2}"></c:set>
			<td><a href="${pageContext.request.contextPath}/result2">링크</a></td>
		</tr>
		<tr>
			<td>2020</td>
			<td>1</td>
			<td><c:out value="${sum3}"></c:out></td>
			<c:set var="col_sum" value="${col_sum+sum3}"></c:set>
			<td><a href="${pageContext.request.contextPath}/result3">링크</a></td>
		</tr>
		<tr>
			<td>2020</td>
			<td>2</td>
			<td><c:out value="${sum4}"></c:out></td>
			<c:set var="col_sum" value="${col_sum+sum4}"></c:set>
			<td><a href="${pageContext.request.contextPath}/result4">링크</a></td>
		</tr>
		<tr bgcolor="#e9e5c2">
			<td>총계</td>
			<td></td>
			<td><c:out value="${col_sum}" /></td>
			<td></td>
		</tr>
	</table>
	<br>
	<a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
</body>
</html>