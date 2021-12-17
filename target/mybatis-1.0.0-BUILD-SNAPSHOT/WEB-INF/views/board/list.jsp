<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
</head>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if (a)
			location.href = "deleteok/" + id;
	}
</script>
<body>
	<h1>일기장</h1>
	<table id="list">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Weather</th>
			<th>mood</th>
			<th>Content</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.title}</td>
				<td>${u.writer}</td>
				<td>${u.weather}</td>
				<td>${u.mood}</td>
				<td>${u.content}</td>
				<td>${u.regdate}</td>
				<td><a href="editform/${u.seq}">글수정</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<button type="button" onclick="location.href='add'">새글쓰기</button>
	<button type="button" onclick="location.href='../login/logout'">로그아웃</button>
	<button type="button" onclick="location.href='ex'">ex</button>
</body>
</html>