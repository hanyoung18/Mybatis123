<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login Page</title>
    <link rel="stylesheet" href="page.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
      rel="stylesheet"
    />
    <style>
      img,
      label {
        display: inline-block;
      }
      label {
        width: 130px;
      }

      body {
        margin: 0;
        padding: 0;
        height: 100vh;
        background-color: rgb(204, 118, 84);
        font-family: "Fuzzy Bubbles", cursive;
      }

      .box {
        width: 500px;
        border-radius: 15px;
        border: 2px solid rgb(184, 73, 29);
        background-color: rgba(255, 255, 255, 0.322);
      }

      .container {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
      }

      #title {
        font-size: 3em;
      }

      .form-control {
        width: 300px;
        height: 30px;
        border: 0;
        border-bottom: 2px solid rgb(184, 73, 29);
        font-size: 30px;
        line-height: 35px;
        text-align: center;
        padding: 10px;
        background: transparent;
        color: black;
      }

      .form-control:focus {
        outline: none;
      }

      .input-group {
        margin-top: 2em;
      }

      .btn {
        margin: 2em 0;
        border-radius: 15px;
        width: 100px;
        background-color: antiquewhite;
        font-family: "Fuzzy Bubbles", cursive;
        font-size: large;
        color: rgb(168, 132, 77);
        height: 40px;
        border: none;
      }

      .btn:focus {
        background-color: rgb(235, 205, 166);
      }
    </style>
  </head>
  <body>
    <div class="container" style="text-align: center; padding-top: 100px">
      <h1 id="title">Welcome to My Diary!</h1>
      <div class="box">
        <h1>Login</h1>
        <form method="post" action="loginok">
          <div class="input-group flex-nowrap">
            <span class="input-group-text" id="addon-wrapping">Username</span>
            <input
              type="text"
              class="form-control"
              aria-label="Username"
              aria-describedby="addon-wrapping"
              name="userid"
            />
          </div>
          <div class="input-group flex-nowrap">
            <span class="input-group-text" id="addon-wrapping">Password</span>
            <input
              type="password"
              class="form-control"
              aria-label="Username"
              aria-describedby="addon-wrapping"
              name="Password"
            />
          </div>
          <button type="submit" class="btn btn-warning">Log in</button>
        </form>
      </div>
    </div>
  </body>
</html>
