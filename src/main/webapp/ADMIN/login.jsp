<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Gestion Immo | Back End</title>
  <meta name="description" content="mobile first, app, web app, responsive, admin dashboard, flat, flat ui">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]>
    <link rel="stylesheet" href="css/ie.css">
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/html5.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body>
  <!-- header -->
  <header id="header" class="navbar navbar-sm bg bg-black">
    <a href="docs.html" class="btn btn-link pull-right"><i class="icon-question icon-xlarge text-default"></i></a>
    <a class="navbar-brand" href="#">first</a>
  </header>
  <!-- / header -->
  <section id="content">
    <div class="row">
      <div class="col col-lg-4 col-offset-4 m-t-large">
        <section class="panel">
          <header class="panel-heading text-center">
            Sign in
          </header>
          <form action="../login" method="POST">
            <div class="block">
              <label class="control-label">User</label>
              <input type="text" placeholder="Username" name="username">
            </div>
            <div class="block">
              <label class="control-label">Password</label>
              <input type="password" name="password" placeholder="Password">
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox"> Keep me logged in
              </label>
            </div>
            <button type="submit" class="btn btn-info">Se Connecter</button>
            <div class="line line-dashed"></div>
            <a href="#" class="btn btn-facebook btn-block m-b-small"><i class="icon-facebook pull-left"></i>Sign in with Facebook</a>
            <a href="#" class="btn btn-twitter btn-block"><i class="icon-twitter pull-left"></i>Sign in with Twitter</a>
            <div class="line line-dashed"></div>
          </form>
        </section>
      </div>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>&copy; 2015 Treeptik</small><br><br>
      </p>
    </div>
  </footer>
  <!-- / footer -->
	<script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- app -->
  <script src="js/app.js"></script>
  <script src="js/app.plugin.js"></script>
  <script src="js/app.data.js"></script>
</body>
</html>