<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<title>Diary</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
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
   padding: 2.5em;
}

.btns {
   display: flex;
   width: 100%;
   justify-content: end;
   padding-right: 40px;
}

.btn {
   padding: 0.5em;
   margin: 0 8px;
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

.regdate {
   font-size: smaller;
}

table {
   width: 100%;
}

.title {
   font-size: 3.5em;
   color: white;
   margin-left: 30px;
}

.header {
   display: flex;
   align-items: center;
   justify-content: space-between;
   background-color: rgb(130, 178, 187);
   padding:1em;
}

.buttons {
   margin-right: 30px;
}

td {
   background-color: rgb(118, 175, 92);
   margin: 10px;
   color: white;
   text-align: center;
   width: 150px;
   padding: 10px;
}

#bottom {
   margin-top: 3.5em;
}

#main {
   border: solid black 2px;
   padding: 2em 2em 2em 2em;
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
   <div class="header">
      <div class="title">Share Daily Life</div>
      <div class="buttons">
         <button class="btn" type="button" onclick="location.href='add'">
            새글쓰기</button>
         <button class="btn" type="button"
            onclick="location.href='../login/logout'">로그아웃</button>
      </div>
   </div>

   <div class="w3-content">
      <c:forEach items="${list}" var="u">
         <div class="w3-row w3-margin">
            <div class="w3-container" id="content">
               <h2>${u.title}</h2>
               <p style="height: 28px">
               <table>
                  <tr>
                     <td>Id: ${u.seq}</td>
                     <td>글쓴이:${u.writer}</td>
                     <td>기분: ${u.mood}</td>
                     <td>날씨: ${u.weather}</td>
                  </tr>
               </table>
               </p>
               <div id="main">${u.content}</div>
               <p id="bottom">
                  <span class="regdate">작성일: ${u.regdate}</span>
                  <button type="button" class="btn" id="right"
                     onclick="location.href='editform/${u.seq}'">
                     수정하기</button>
                  <button type="button" class="btn" id="right"
                     onclick="javascript:delete_ok('${u.seq}')">
                     삭제하기</button>
               </p>
            </div>
         </div>
      </c:forEach>
   </div>
</body>
</html>