<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Gestion Immo | Home Admin</title>
  <meta name="description" content="mobile first, app, web app, responsive, admin dashboard, flat, flat ui">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/plugin.css">
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
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">            
        </a>
        <ul class="dropdown-menu">
        </ul>
      </li>
    </ul>
    <a class="navbar-brand" href="#">first</a>
    <button type="button" class="btn btn-link pull-left nav-toggle hidden-lg" data-toggle="class:slide-nav slide-nav-left" data-target="body">
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
      <li class="dropdown-submenu">
        <a href="#"><i class="icon-list icon-xlarge"></i>Lists</a>
        <ul class="dropdown-menu">
          <li><a href="list_logement.do">Logements</a></li>
          <li><a href="list_commune.do">Communes et Quartier</a></li>
          <li><a href="list_individu.do">Propriétaires</a></li>
        </ul>
      </li>
       <li class="dropdown-submenu active"><a href="form.html"><i class="icon-edit icon-xlarge"></i>Form</a>
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
      <div class="row">
        <div class="col col-lg-12">
          <section class="toolbar clearfix m-t-large m-b">
            <a href="mail.html" class="btn btn-white btn-circle"><i class="icon-envelope-alt"></i>Inbox <b class="badge bg-white">5</b></a>
            <a href="#" class="btn btn-primary btn-circle active"><i class="icon-lightbulb"></i>Projects</a>
            <a href="#" class="btn btn-success btn-circle"><i class="icon-check"></i>Tasks</a>
            <a href="#" class="btn btn-info btn-circle active"><i class="icon-time"></i>Timeline<b class="badge bg-info"><i class="icon-plus"></i></b></a>
            <a href="#" class="btn btn-inverse btn-circle"><i class="icon-bar-chart"></i>Stats</a>
            <a href="calendar.html" class="btn btn-warning btn-circle"><i class="icon-calendar-empty"></i>Calendar</a>
            <a href="#" class="btn btn-danger btn-circle"><i class="icon-group"></i>Groups</a>
            <a href="#" class="btn btn-circle"><i class="icon-plus"></i>More</a>
          </section>
        </div>
        <div class="col col-lg-6">
          <div class="row">
            <!-- easypiechart -->
            <div class="col col-sm-6">              
              <section class="panel">
                <header class="panel-heading bg-white">
                  <div class="text-center h5">Play/Pause pie</div>
                </header>
                <div class="pull-in text-center">
                  <div class="inline">
                    <div class="easypiechart" data-percent="55" data-loop="true">
                      <span class="h2" style="margin-left:10px;margin-top:10px;display:inline-block">55</span>%
                      <div class="easypie-text"><button class="btn btn-link m-t-n-small" data-toggle="class:pie"><i class="icon-play text-active text-muted"></i><i class="icon-pause text text-muted"></i></button></div>
                    </div>
                  </div>
                </div>
              </section>
            </div>
            <div class="col col-sm-6">
              <section class="panel">
                <header class="panel-heading bg-white">
                  <div class="text-center h5">Total: <strong>5,000</strong></div>
                </header>
                <div class="pull-in text-center">
                  <div class="inline">
                    <div class="easypiechart" data-percent="75" data-bar-color="#576879">
                      <span class="h2" style="margin-left:10px;margin-top:10px;display:inline-block">75</span>%
                      <div class="easypie-text text-muted">new visits</div>
                    </div>
                  </div>
                </div>
              </section>
            </div>
            <!-- easypiechart end-->
          </div>
          <section class="panel">
            <div class="text-muted l-h-2x">
              <span class="badge">3,3121</span>
              <span class="m-r-small">Orders</span>
              <span class="badge bg-success">25,129</span>
              <span class="m-r-small">Selling Items</span>
              <span class="badge">59,973</span>
              <span class="m-r-small">Items</span>
              <span class="badge">3,141</span> Customers
            </div>
          </section>
        </div>
        <div class="col col-lg-6">
          <!-- sparkline stats -->
          <section class="panel">
            <header class="panel-heading">
              <ul class="nav nav-pills pull-right">
                <li><a href="#" data-loading-text="loading..."><i class="icon-retweet"></i></a></li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <span class="text">Day</span> <span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu pull-right">
                    <li class="active"><a href="#">Day</a></li>
                    <li><a href="#">Week</a></li>
                    <li><a href="#">Month</a></li>
                  </ul>
                </li>
              </ul>
              <span>Snapshot</span>
            </header>
            <ul class="list-group list-group-flush m-t-n">
              <li class="list-group-item">
                <div class="media">
                  <div class="pull-left text-center media-large">
                    <div class="h4 m-t-mini"><strong>890</strong></div>
                    <small class="text-muted">Total views</small>              
                  </div>
                  <div class="pull-right hidden-sm text-right m-t">
                    <b class="badge bg-info" data-toggle="tooltip" data-title="New">250</b>
                  </div>
                  <div class="media-body">
                    <div class="sparkline" data-type="bar" data-bar-color="#8e98a9" data-bar-width="10" data-height="28"><!--20,10,15,21,12,5,21,30,24,15,8,19--></div>
                    <ul class="list-inline text-muted axis"><li>12<br>a</li><li>2</li><li>4</li><li>6</li><li>8</li><li>10</li><li>12<br>p</li><li>2</li><li>4</li><li>6</li><li>8</li><li>10</li></ul>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="media">
                  <div class="pull-left text-center media-large">
                    <div class="h4 m-t-mini"><strong>$4,800</strong></div>
                    <small class="text-muted">Revenue</small>
                  </div>
                  <div class="pull-right hidden-sm text-right m-t">
                    <b class="badge bg-success" data-toggle="tooltip" data-title="Captured">$4,000</b>
                  </div>
                  <div class="media-body">
                    <div class="sparkline" data-type="bar" data-bar-color="#13c4a5" data-bar-width="10" data-height="28"><!--200,400,500,100,90,1200,1500,1000,800,500,80,50--></div>
                    <ul class="list-inline text-muted axis"><li>12<br>a</li><li>2</li><li>4</li><li>6</li><li>8</li><li>10</li><li>12<br>p</li><li>2</li><li>4</li><li>6</li><li>8</li><li>10</li></ul>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="media">
                  <div class="pull-left text-center media-large">
                    <div class="h4 m-t-mini"><strong>595</strong></div>
                    <small class="text-muted">Orders</small>
                  </div>
                  <div class="pull-right hidden-sm text-right m-t">
                    <b class="badge" data-toggle="tooltip" data-title="Awaiting">120<i class="icon-plane"></i></b>
                  </div>
                  <div class="media-body">
                    <div class="sparkline" data-type="bar" data-bar-color="#61a1e1" data-bar-width="10" data-height="28"><!--15,21,30,24,15,8,19,20,10,15,21,12--></div>
                    <ul class="list-inline text-muted axis"><li>12<br>a</li><li>2</li><li>4</li><li>6</li><li>8</li><li>10</li><li>12<br>p</li><li>2</li><li>4</li><li>6</li><li>8</li><li>10</li></ul>
                  </div>
                </div>
              </li>
            </ul>
          </section>
          <!-- sparkline stats end -->
        </div>        
      </div>
      <div class="row">
        <div class="col col-lg-6">
          <!-- scrollable inbox widget -->
          <section class="panel">
            <header class="panel-heading">
              <ul class="nav nav-pills pull-right">
                <li>
                  <a href="#" class="panel-toggle text-muted"><i class="icon-caret-down icon-large text-active"></i><i class="icon-caret-up icon-large text"></i></a>
                </li>
              </ul>
              <span class="label label-large bg-default">15</span> Inbox
            </header>
            <section style="height:214px" class="panel-content scrollbar scroll-y">
              <article class="media">
                <span class="pull-left thumb-small"><img src="images/avatar.jpg" alt="John said" class="img-circle"></span>
                <div class="media-body">
                  <div class="pull-right media-mini text-center text-muted">
                    <strong class="h4">12:18</strong><br>
                    <small class="label bg-light">pm</small>
                  </div>
                  <a href="#" class="h4">Bootstrap 3.0 is comming</a>
                  <small class="block"><a href="#" class="">John Smith</a> <span class="label label-success">Circle</span></small>
                  <small class="block">Sleek, intuitive, and powerful mobile-first front-end framework for faster and easier web development.</small>
                </div>
              </article>
              <div class="line pull-in"></div>
              <article class="media">
                <span class="pull-left thumb-small"><i class="icon-user icon-2x text-muted"></i></span>                
                <div class="media-body">
                  <div class="pull-right media-mini text-center text-muted">
                    <strong class="h4">17</strong><br>
                    <small class="label bg-light">feb</small>
                  </div>
                  <a href="#" class="h4">Bootstrap documents</a>
                  <small class="block"><a href="#" class="">John Smith</a> <span class="label label-info">Friends</span></small>
                  <small class="block">There are a few easy ways to quickly get started with Bootstrap, each one appealing to a different skill level and use case. Read through to see what suits your particular needs.</small>
                </div>
              </article>
              <div class="line pull-in"></div>
              <article class="media">
                <div class="media-body">
                  <div class="pull-right media-mini text-center text-muted">
                    <strong class="h4">09</strong><br>
                    <small class="label bg-light">jan</small>
                  </div>
                  <a href="#" class="h4 text-success">Mobile first html/css framework</a>
                  <small class="block">Bootstrap, Ratchet</small>
                </div>
              </article>
            </section>
          </section>
          <!-- / scrollable inbox widget-->
        </div>
        <div class="col col-lg-6">
          <!-- task -->
          <section class="panel">
            <header class="panel-heading">
              <a class="btn btn-link pull-right nav"><i class="icon-search text-default icon-large"></i></a>
              Tasks
            </header>
            <ul class="panel-content list-group list-group-flush m-t-n">
              <li class="list-group-item" data-toggle="class:active" data-target="#todo-1">
                <div class="media">
                  <span class="pull-left thumb-small m-t-mini">
                    <i class="icon-code icon-xlarge text-default"></i>
                  </span>
                  <div id="todo-1" class="pull-right text-primary m-t-small">
                    <i class="icon-circle icon-large text text-default"></i>
                    <i class="icon-ok-sign icon-large text-active text-primary"></i>
                  </div>
                  <div class="media-body">
                    <div><a href="#" class="h5">Coding on app</a></div>
                    <small class="text-muted">9:30 am every day</small>
                  </div>
                </div>
              </li>
              <li class="list-group-item bg" data-toggle="class:active" data-target="#todo-2">
                <div class="media">
                  <span class="pull-left thumb-small m-t-mini">
                    <i class="icon-reply icon-xlarge text-default"></i>
                  </span>
                  <div id="todo-2" class="pull-right text-primary m-t-small">
                    <i class="icon-circle icon-large text text-default"></i>
                    <i class="icon-ok-sign icon-large text-active text-primary"></i>
                  </div>
                  <div class="media-body">
                    <div><a href="#" class="h5">Reply email</a></div>
                    <small class="text-muted">Check Gmail and reply</small>
                  </div>
                </div>
              </li>
              <li class="list-group-item" data-toggle="class:active" data-target="#todo-3">
                <div class="media">
                  <span class="pull-left thumb-small m-t-mini">
                    <i class="icon-coffee icon-xlarge text-default"></i>
                  </span>
                  <div id="todo-3" class="pull-right text-primary m-t-small">
                    <i class="icon-circle icon-large text text-default"></i>
                    <i class="icon-ok-sign icon-large text-active text-primary"></i>
                  </div>
                  <div class="media-body">
                    <div><a href="#" class="h5">Coffee time</a></div>
                    <small class="text-muted">Freetime as you want</small>
                  </div>
                </div>
              </li>
              <li class="list-group-item bg" data-toggle="class:active" data-target="#todo-4">
                <div class="media">
                  <span class="pull-left thumb-small m-t-mini">
                    <i class="icon-music icon-xlarge text-default"></i>
                  </span>
                  <div id="todo-4" class="pull-right text-primary m-t-small">
                    <i class="icon-circle icon-large text text-default"></i>
                    <i class="icon-ok-sign icon-large text-active text-primary"></i>
                  </div>
                  <div class="media-body">
                    <div><a href="#" class="h5">Listen music</a></div>
                    <small class="text-muted">Listening and finding</small>
                  </div>
                </div>
              </li>
            </ul>
          </section>
          <!-- / task-->
        </div>
        <div class="col col-lg-12">
          <!-- .comment-list -->
          <section class="comment-list block">
            <article id="comment-id-1" class="comment-item media arrow-left">
              <a class="pull-left thumb-small avatar"><img src="images/avatar.jpg" class="img-circle"></a>
              <section class="media-body panel">
                <header class="panel-heading clearfix">
                  <a href="#">John smith</a><label class="label bg-info m-l-mini">Editor</label> <span class="text-muted m-l-small pull-right"><i class="icon-time"></i>24 minutes ago</span>
                </header>
                <div>Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</div>
                <div class="comment-action m-t-small">
                  <a href="#" data-toggle="class" class="btn btn-white btn-mini active"><i class="icon-star-empty text-muted text"></i><i class="icon-star text-danger text-active"></i>Like</a>
                  <a href="#comment-form" class="btn btn-white btn-mini"><i class="icon-mail-reply text-muted"></i>Reply</a>
                </div>
              </section>
            </article>
            <!-- .comment-reply -->
            <article id="comment-id-2" class="comment-item comment-reply media arrow-left">
              <a class="pull-left thumb-small"><span class="btn btn-circle btn-white btn-mini"><i class="icon-user"></i></span></a>
              <section class="media-body panel text-small">
                  <a href="#">Mika Sam</a><label class="label bg-inverse m-l-mini">Admin</label> Report this comment is helpful <span class="text-muted m-l-small pull-right"><i class="icon-time"></i>10 minutes ago</span>
              </section>
            </article>
            <!-- / .comment-reply -->
            <article id="comment-id-3" class="comment-item media arrow-left">
              <a class="pull-left thumb-small avatar"><img src="images/avatar.jpg" class="img-circle"></a>
              <section class="media-body panel">
                <header class="panel-heading clearfix">
                  <a href="#">By me</a><label class="label bg-default m-l-mini">User</label> <span class="text-muted m-l-small pull-right"><i class="icon-time"></i>about 1 hour ago</span>
                </header>
                <div>This comment was posted by you.</div>
                <div class="comment-action m-t-small">
                  <a href="#comment-id-3" data-dismiss="alert" class="btn btn-white btn-mini"><i class="icon-trash text-muted"></i>Remove</a>
                </div>
              </section>
            </article>
            <article id="comment-id-4" class="comment-item media arrow-left">
              <a class="pull-left thumb-small avatar"><img src="images/avatar.jpg" class="img-circle"></a>
              <section class="media-body panel">
                <header class="panel-heading clearfix">
                  <a href="#">Peter</a><label class="label bg-primary m-l-mini">Vip</label> <span class="text-muted m-l-small pull-right"><i class="icon-time"></i>2 hours ago</span>
                </header>
                <blockquote>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                  <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                </blockquote>
                <div>Lorem ipsum dolor sit amet, consecteter adipiscing elit...</div>
                <div class="comment-action m-t-small">
                  <a href="#" data-toggle="class" class="btn btn-white btn-mini"><i class="icon-star-empty text-muted text"></i><i class="icon-star text-danger text-active"></i>Like</a>
                  <a href="#comment-form" class="btn btn-white btn-mini"><i class="icon-mail-reply text-muted"></i>Reply</a>
                </div>
              </section>
            </article>
            <!-- comment form -->
            <article class="comment-item media" id="comment-form">
              <a class="pull-left thumb-small avatar"><img src="images/avatar.jpg" class="img-circle"></a>
              <section class="media-body">
                <form action="" class="m-b-none">
                  <div class="input-group">
                    <input type="text" placeholder="Input your comment here">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="button">POST</button>
                    </span>
                  </div>
                </form>
              </section>
            </article>
          </section>
          <!-- / .comment-list -->
        </div>
      </div>
    </section>
  </section>
  <!-- .modal -->
  <div id="modal" class="modal fade">
    <form class="m-b-none">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-remove"></i></button>
            <h4 class="modal-title" id="myModalLabel">Post your first idea</h4>
          </div>        
          <div class="modal-body">          
            <div class="block">
              <label class="control-label">Title</label>
              <input type="text" placeholder="Post title">
            </div>
            <div class="block">
              <label class="control-label">Content</label>
              <textarea placeholder="Content" rows="5"></textarea>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox"> Share with all memebers of first
              </label>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-small btn-default" data-dismiss="modal">Save</button>
            <button type="button" class="btn btn-small btn-primary" data-loading-text="Publishing...">Publish</button>
          </div>
        </div><!-- /.modal-content -->
      </div>
    </form>
  </div>
  <!-- / .modal -->
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>&copy; 2015 Treeptik</small><br><br>
        <a href="#" class="btn btn-mini btn-circle btn-twitter"><i class="icon-twitter"></i></a>
        <a href="#" class="btn btn-mini btn-circle btn-facebook"><i class="icon-facebook"></i></a>
        <a href="#" class="btn btn-mini btn-circle btn-gplus"><i class="icon-google-plus"></i></a>
      </p>
    </div>
  </footer>
  <a href="#" class="hide slide-nav-block" data-toggle="class:slide-nav slide-nav-left" data-target="body"></a>
  <!-- / footer -->
	<script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- app -->
  <script src="js/app.js"></script>
  <script src="js/app.plugin.js"></script>
  <script src="js/app.data.js"></script>

  <!-- Sparkline Chart -->
  <script src="js/charts/sparkline/jquery.sparkline.min.js"></script>
  <!-- Easy Pie Chart -->
  <script src="js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
</body>
</html>