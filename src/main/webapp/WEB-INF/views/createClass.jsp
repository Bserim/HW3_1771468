<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath}/resources/css/main.css">
</head>

<style>
table {
	border: 1px solid #b4c3a0;
	width: 600px;
	height: 180px;
	background-color: #f3f4ef;
}

h2 {
	text-align: center;
}
</style>

<body>
	<br>
	<h2>[ 수강신청 ]</h2>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreated"
		modelAttribute="registration">

		<table class="formtable"
			style="margin-left: auto; margin-right: auto;">
			<tr>
				<td class="label" style="text-align: center;" nowrap>년도</td>
				<td><sf:input class="control" type="text" path="year" /><br />
					<sf:errors path="year" class="error" /></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="label" style="text-align: center;" nowrap>학기</td>
				<td><sf:input class="control" type="text" path="semester" /><br />
					<sf:errors path="semester" class="error" /></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="label" style="text-align: center;" nowrap>교과목명</td>
				<td><sf:input class="control" type="text" path="subject" /><br />
					<sf:errors path="subject" class="error" /></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="label" style="text-align: center;" nowrap>교과구분</td>
				<td><sf:input class="control" type="text" path="division" /><br />
					<sf:errors path="division" class="error" /></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="label" style="text-align: center;" nowrap>담당교수</td>
				<td><sf:input class="control" type="text" path="professor" /><br />
					<sf:errors path="professor" class="error" /></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td class="label" style="text-align: center;" nowrap>학점</td>
				<td><sf:input class="control" type="text" path="credit" /><br />
					<sf:errors path="credit" class="error" /></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="수강 신청" /></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>