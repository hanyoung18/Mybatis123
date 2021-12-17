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
<style>
.w3-container w3-teal {
	background-color: rgb(204, 118, 84);
}

#head {
	background-color: rgb(204, 118, 84);
}

#right {
	float: right;
}

#content {
	border-radius: 5px;
	border: burlywood 2px solid;
	background-color: rgb(255, 235, 211);
	font-size: medium;
	font-family: "Noto Sans KR", sans-serif;
	padding: 1em;
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
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하시겠습니까?");
		if (a)
			location.href = "deleteok/" + id;
	}
</script>
<body>

	<div class="w3-container w3-teal" id="head">
		<h1>Share daily life</h1>
	</div>

	<div class="w3-content">
		<c:forEach items="${list}" var="u">
			<div class="w3-row w3-margin">
				<div class="w3-twothird w3-container" id="content">
					<h2>${u.title}</h2>
					<p style="height: 28px">
						Id: ${u.seq} 글쓴이:${u.writer}<br>기분: ${u.mood} 날씨:
						${u.weather}
					</p>
					<p>
						<br>내용<br> ${u.content} <br> <br>작성일:
						${u.regdate} <br>
					</p>
					<p>
						<button type="button" class="btn" id="right"
							onclick="location.href='editform/${u.seq}'">수정하기</button>
						<button type="button" class="btn" id="right"
							onclick="javascript:delete_ok('${u.seq}')">삭제하기</button>
					</p>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
