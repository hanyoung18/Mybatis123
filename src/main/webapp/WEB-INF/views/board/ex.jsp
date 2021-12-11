<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<title>Diary</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if (a)
			location.href = "deleteok/" + id;
	}
</script>
<body>

	<div class="w3-container w3-teal">
		<h1>
			Share daily life
				<button type="button" onclick="location.href='add'">새글쓰기</button>
				<button type="button" onclick="location.href='../login/logout'">로그아웃</button>
		</h1>
	</div>
	<div class="w3-content">
		<c:forEach items="${list}" var="u">
			<div class="w3-row w3-margin">
				<div class="w3-third">
					<img src="img_5terre.jpg" style="width: 100%; min-height: 200px">
				</div>
				<div class="w3-twothird w3-container">
					<h2>${u.title}</h2>
					<p style="height: 28px">
						Id: ${u.seq} 글쓴이:${u.writer}<br>기분: ${u.mood} 날씨:
						${u.weather}
					</p>
					<p>
						<br>내용<br> ${u.content} <br> <br>작성일:
						${u.regdate} <br>
						<button type="button" onclick="location.href='editform/${u.seq}'">글수정</button>
						<button type="button" onclick="javascript:delete_ok('${u.seq}')">글삭제</button>
					</p>
				</div>

			</div>
		</c:forEach>
	</div>
</body>
</html>
