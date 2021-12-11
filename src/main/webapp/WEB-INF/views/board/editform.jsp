<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.my.mybatis.board.BoardDAO, com.my.mybatis.board.BoardVO" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>editform</title>
</head>
<body>
<h1>글 수정</h1>
<form:form commandName="boardVO" method="POST" action="../editok">
		<form:hidden path="seq" />
		<table id="edit">
			<tr><td>제목</td><td><form:input path="title"/></td></tr>
			<tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
			<tr><td>날씨</td><td>
			<select name="weather">
				<option value="Sunny" >Sunny</option>
				<option value="Rainy">Rainy</option>
				<option value="snowing">snowing</option>
			</select>
			</td></tr>
			<tr><td>기분</td><td>
			<label><input type="radio" name="mood" value="bad">bad</label>
			<label><input type="radio" name="mood" value="good">good</label>
			</td></tr>
			<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
		</table>
		<button type="button" onclick="location.href='../list'">취소하기</button>
		<button type="submit">수정하기</button>
</form:form>
</body>
</html>