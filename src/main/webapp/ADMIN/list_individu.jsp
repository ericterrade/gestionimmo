<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Gestion Immo | Liste des Propriétaire</title>
  <meta name="description" content="mobile first, app, web app, responsive, admin dashboard, flat, flat ui">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/plugin.css">
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
  <header id="header" class="navbar navbar-sm">    
    <ul class="nav navbar-nav navbar-avatar pull-right">
      <li class="dropdown">
<!--         <a href="#" class="dropdown-toggle" data-toggle="dropdown">             -->
<!--           <span class="hidden-sm-only">Mika Sokeil</span> -->
<!--           <span class="thumb-small avatar inline"><img src="images/avatar.jpg" alt="Mika Sokeil" class="img-circle"></span> -->
<!--           <b class="caret hidden-sm-only"></b> -->
<!--         </a> -->
<!--         <ul class="dropdown-menu"> -->
<!--           <li><a href="#">Settings</a></li> -->
<!--           <li><a href="#">Profile</a></li> -->
<!--           <li><a href="#"><span class="badge bg-danger pull-right">3</span>Notifications</a></li> -->
<!--           <li class="divider"></li> -->
<!--           <li><a href="docs.html">Help</a></li> -->
<!--           <li><a href="signin.html">Logout</a></li> -->
<!--         </ul> -->
      </li>
    </ul>
    <a class="navbar-brand" href="#">first</a>
    <button type="button" class="btn btn-link pull-left nav-toggle hidden-lg" data-toggle="class:show" data-target="#nav">
      <i class="icon-reorder icon-xlarge text-default"></i>
    </button>
    <ul class="nav navbar-nav hidden-sm">
      <li>
        <div class="m-t m-b-small" id="panel-notifications">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-comment-alt icon-xlarge text-default"></i><b class="badge badge-notes bg-danger count-n">2</b></a>
          <section class="dropdown-menu m-l-small m-t-mini">
            <section class="panel panel-large arrow-top">
              <header class="panel-heading bg-white"><span class="h5"><strong>You have <span class="count-n">2</span> notifications</strong></span></header>
              <div class="list-group list-group-flush m-t-n">
                <a href="#" class="media list-group-item">
                  <span class="pull-left thumb-small"><img src="images/avatar.jpg" alt="John said" class="img-circle"></span>
                  <span class="media-body block m-b-none">
                    Moved to Bootstrap 3.0<br>
                    <small class="text-muted">23 June 13</small>
                  </span>
                </a>
                <a href="#" class="media list-group-item">
                  <span class="media-body block m-b-none">
                    first v.1 (Bootstrap 2.3 based) released<br>
                    <small class="text-muted">19 June 13</small>
                  </span>
                </a>
              </div>
              <footer class="panel-footer text-small">
                <a href="#" class="pull-right"><i class="icon-cog"></i></a>
                <a href="#">See all the notifications</a>
              </footer>
            </section>
          </section>
        </div>
      </li>
      <li><div class="m-t-small"><a class="btn btn-small btn-info" data-toggle="modal" href="#modal"><i class="icon-plus"></i> POST</a></div></li>
      <li class="dropdown shift" data-toggle="shift:appendTo" data-target=".nav-primary .nav">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog icon-xlarge visible-sm visible-sm-inline"></i>Settings <b class="caret hidden-sm-only"></b></a>
        <ul class="dropdown-menu">
          <li>
            <a href="#" data-toggle="class:navbar-fixed" data-target='body'>Navbar 
              <span class="text-active">auto</span>
              <span class="text">fixed</span>
            </a>
          </li>
          <li class="visible-lg">
            <a href="#" data-toggle="class:nav-vertical" data-target="#nav">Nav 
              <span class="text-active">vertical</span>
              <span class="text">horizontal</span>
            </a>
          </li>
          <li class="divider hidden-sm"></li>
          <li class="nav-header">Colors</li>
          <li>
            <a href="#" data-toggle="class:bg bg-black" data-target='.navbar'>Navbar 
              <span class="text-active">white</span>
              <span class="text">inverse</span>
            </a>
          </li>
          <li>
            <a href="#" data-toggle="class:bg-light" data-target='#nav'>Nav 
              <span class="text-active">inverse</span>
              <span class="text">light</span>
            </a>
          </li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form pull-left shift" action="" data-toggle="shift:appendTo" data-target=".nav-primary">
      <i class="icon-search text-muted"></i>
      <input type="text" class="input-small" placeholder="Search">
    </form>
  </header>
  <!-- / header -->
  <!-- nav -->
  <nav id="nav" class="nav-primary visible-lg nav-vertical">
    <ul class="nav" data-spy="affix" data-offset-top="50">
      <li><a href="index.jsp"><i class="icon-dashboard icon-xlarge"></i>Dashboard</a></li>
      <li class="dropdown-submenu active">
        <a href="#"><i class="icon-list icon-xlarge"></i>Lists</a>
        <ul class="dropdown-menu">
          <li><a href="list_logement.do">Logements</a></li>
          <li><a href="list_commune.do">Communes et Quartier</a></li>
          <li><a href="list_individu.do">Propriétaires</a></li>
        </ul>
      </li>
      <li class="dropdown-submenu active">><a href="form.html"><i class="icon-edit icon-xlarge"></i>Form</a>
      <ul class="dropdown-menu">
          <li><a href="edit_logement.do">Nouveau Logement</a></li>
          <li><a href="edit_individu.do">Nouveau Proprio</a></li>
        </ul>
      
      </li>
    </ul>
  </nav>
  <!-- / nav -->
  <section id="content">
    <section class="main">
      <div class="padder clearfix">
        <h4><i class="icon-table"></i>Propriétaires</h4>
      </div>
      <div class="row">
        <div class="col col-lg-12">
          <section class="panel">
            <header class="panel-heading">Liste des Propriétaires <i class="icon-info-sign text-muted" data-toggle="popover" data-html="true" data-placement="top" data-content="The datatables use ajax to load the data. please put this file on a server to preview." title="" data-trigger="hover" data-original-title="Help"></i> </header>
            <div class="pull-out">
              <table class="table table-striped m-b-none" data-ride="datatables">
                <thead>
                  <tr>
                    <th width="10%">Nom</th>
                    <th width="10%">Prénom</th>
                    <th width="10%">Téléphone</th>
                    <th width="10%">Date de Naissance</th>
                    <th width="10%"></th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${individus}" var="i">
                <tr>
                    <td width="10%">${i.nom }</td>
                   	<td width="10%">${i.prenom }</td>
                    <td width="10%">${i.phone}</td>
                    <td width="10%">${i.dateNaissance}</td>
                    <td><a href="update_individu.do?id=${i.id }"><i class="icon-pencil"></i></a></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
          </section>
        </div>
      </div>
    </section>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>&copy; first 2013, Mobile first web app framework base on Bootstrap</small><br><br>
        <a href="#" class="btn btn-mini btn-circle btn-twitter"><i class="icon-twitter"></i></a>
        <a href="#" class="btn btn-mini btn-circle btn-facebook"><i class="icon-facebook"></i></a>
        <a href="#" class="btn btn-mini btn-circle btn-gplus"><i class="icon-google-plus"></i></a>
      </p>
    </div>
  </footer>
  <!-- / footer -->
	<script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- fuelux -->
  <script src="js/fuelux/fuelux.js"></script>
  <script src="js/underscore-min.js"></script>
  <!-- datatables -->
  <script src="js/datatables/jquery.dataTables.min.js"></script>
  <!-- Sparkline Chart -->
  <script src="js/charts/sparkline/jquery.sparkline.min.js"></script>
  <!-- Easy Pie Chart -->
  <script src="js/charts/easypiechart/jquery.easy-pie-chart.js"></script>

  <!-- app -->
  <script src="js/app.js"></script>
  <script src="js/app.plugin.js"></script>
</body>
</html>