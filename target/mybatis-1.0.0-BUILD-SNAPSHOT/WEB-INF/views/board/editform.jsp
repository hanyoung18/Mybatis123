<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.my.mybatis.board.BoardDAO, com.my.mybatis.board.BoardVO"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Diary</title>
<link rel="stylesheet" href="add.css">
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Fuzzy+Bubbles&family=Gamja+Flower&display=swap"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
}

body {
	margin: 0;
	padding: 0;
	height: 100vh;
	color: rgb(133, 57, 27);
}

.head {
	margin: 30px 40px;
}

.main {
	margin: 40px 40px 0 40px;
}

textarea {
	width: 96%;
	min-height: 300px;
	border-radius: 5px;
	border: burlywood 2px solid;
	background-color: rgb(255, 235, 211);
	font-size: medium;
	font-family: "Noto Sans KR", sans-serif;
	padding: 1em;
}

textarea:focus {
	outline: none;
}

.diary {
	display: flex;
	flex-direction: column;
	margin: 30px 30px 10px 30px;
	font-size: large;
}

#edit {
	border-bottom: solid 2px rgb(133, 57, 27);
	font-size: large;
	margin: 0 30px;
	width: 95%;
}

.name {
	width: 150px;
}

.second {
	background-color: rgba(187, 176, 162, 0.87);
}

input[type="text"] {
	border: none;
	width: 400px;
	font-size: large;
	padding: 0.5em;
	background-color: rgb(255, 235, 211);
}

.btns {
	display: flex;
	width: 100%;
	justify-content: end;
	padding-right: 40px;
}

.btn {
	padding: 0.5em;
	margin: 0 15px;
	border: solid 3px bisque;
	background-color: rgb(255, 245, 234);
	border-radius: 10px;
}

.btn:hover {
	background-color: rgb(255, 196, 132);
	cursor: pointer;
}

button[type="submit"] {
	margin-right: 50px;
}
</style>
</head>
<body>
	<div class="head">
		<h1>수정하기</h1>
	</div>
	<div class="main">
		<form:form commandName="boardVO" method="POST" action="../editok">
			<form:hidden path="seq" />
			<table id="edit">
				<tr>
					<td class="name">제목</td>
					<td><form:input path="title" /></td>
				</tr>
				<tr>
					<td class="name">글쓴이</td>
					<td><form:input path="writer" class="second" /></td>
				</tr>
				<tr>
					<td class="name">날씨</td>
					<td><select name="weather">
							<option value="Sunny">Sunny</option>
							<option value="Rainy">Rainy</option>
							<option value="snowing">snowing</option>
					</select></td>
				</tr>
				<tr>
					<td>기분</td>
					<td><label><input type="radio" name="mood" value="bad">bad</label>
						<label><input type="radio" name="mood" value="good">good</label>
					</td>
				</tr>
			</table>
			<div class="diary">
				내용
				<form:textarea cols="80" rows="5" path="content" />
			</div>
			<div class="btns">
				<button type="button" onclick="location.href='../list'" class="btn">취소하기</button>
				<button type="submit" class="btn">등록하기</button>
			</div>
		</form:form>
	</div>
</body>
</html>