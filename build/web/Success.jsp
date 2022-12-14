<%-- 
    Document   : Success
    Created on : Aug 9, 2022, 9:58:30 AM
    Author     : Adminstrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Simple Success Confirmation Popup</title>
<link rel="stylesheet" href="edit/Success.css">
<div id="container">
</head>
<body>
    <div id="success-box">
      <div class="dot"></div>
      <div class="dot two"></div>
      <div class="face">
        <div class="eye"></div>
        <div class="eye right"></div>
        <div class="mouth happy"></div>
      </div>
      <div class="shadow scale"></div>
      <div class="message"><h1 class="alert">Success!</h1><p>yay, everything is working.</p></div>
      <button class="button-box"><h1 class="green">continue</h1></button>
    </div>
    <div id="error-box">
      <div class="dot"></div>
      <div class="dot two"></div>
      <div class="face2">
        <div class="eye"></div>
        <div class="eye right"></div>
        <div class="mouth sad"></div>
      </div>
      <div class="shadow move"></div>
      <div class="message"><h1 class="alert">Error!</h1><p>oh no, something went wrong.</div>
      <button class="button-box"><h1 class="red">try again</h1></button>
    </div>
  </div>
  
  <footer>
    <p>made by <a href="https://codepen.io/juliepark"> julie</a> ♡
  </footer>
</body>