<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>새 글 쓰기</h1>
	<form action="addok" method="post">
		<table id="edit">
			<tr><td>제목</td><td><input type="text" name="title" /></td></tr>
			<tr><td>글쓴이</td><td><input type="text" name="writer" /></td></tr>
			<tr><td>날씨</td><td>
			<select name="weather">
				<option value="Sunny">Sunny</option>
				<option value="Rainy">Rainy</option>
				<option value="snowing">snowing</option>
			</select>
			</td></tr>
			<tr><td>기분</td><td>
			<label><input type="radio" name="mood" value="bad">bad</label>
			<label><input type="radio" name="mood" value="good">good</label>
			</td></tr>
			<tr><td>내용</td><td><textarea cols="80" rows="10" name="content" /></textarea></td></tr>
		</table>
		<button type="button" onclick="location.href='list'">목록보기</button>
		<button type="submit">등록하기</button>
	</form>
</body>
</html>