<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en"><head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Real estate - Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
		

		<link id="switch_style" href="css/real_estate.css" rel="stylesheet">
	
    <!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
</head>

<body>
	
    <div class="container">
		<div class="row"><!-- start header -->
			<div class="span4 logo">
				<a href="index.html">
				<div class="row">
					<div class="span1">
						<img src="css/images/Home-green-48.png" alt=""/>
					</div>
					<div class="span3">
						<h1><small>Treeptik</small><br /><span>Gestion</span> Immo</h1>
					</div>
				</div>
				</a>
			</div>		
			<div class="span4 customer_service pull-right text-right">
				<br />
				<h4>Customer service: 0800 8475 548</h4>
				<h4><small>24 hours a day, 7 days a week</small></h4>
			</div>
		</div><!-- end header -->
		
		<div class="row"><!-- start nav -->
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container">
							<div class="nav-collapse">
								<ul class="nav">
									<li><a href="listings.html" class="first">For sale</a></li>
									<li><a href="map_properties.html">To rent</a></li>
									<li><a href="compare.html">New homes</a></li>
									<li><a href="property.html">Property of the day</a></li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Property pages <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="listings.html">Property listings</a></li>
											<li><a href="map_properties.html">Properties map</a></li>
											<li><a href="property.html">Single property</a></li>
											<li><a href="compare.html">Compare properties</a></li>
										</ul>
									</li>							
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Other pages <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="typography.html">Typography</a></li>
											<li><a href="terms.html">Terms and conditions</a></li>
											<li><a href="contact.html">Contact us</a></li>
											<li><a href="about.html">About us</a></li>
										</ul>
									</li>
									
								</ul>
								
								<ul class="nav pull-right">
									
									<li class="dropdown">
										<a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign Up<strong class="caret"></strong></a>
										<div class="dropdown-menu">
											<form action="index.html" method="post">
												<input type="text" name="user[username]" placeholder="Full name" size="30" />
												<input type="password" name="user[password]" placeholder="Email" size="30" />
												<input type="password" name="user[password]" placeholder="Password" size="30" />
												
												<input class="btn btn-primary" type="submit" name="commit" value="Sign Up" />
											</form>
										</div>
									</li>			
									
									<li class="dropdown">
										<a class="dropdown-toggle" href="#" data-toggle="dropdown">Sign In <strong class="caret"></strong></a>
										<div class="dropdown-menu">
											<form action="index.html" method="post">
												<input type="text" name="user[username]" placeholder="Username or email" size="30" />
												<input type="password" name="user[password]" placeholder="Password" size="30" />
												<input id="remember_me" type="checkbox" name="user[remember_me]" value="1" />
												<label class="string optional"> Remember me</label>
												
												<input class="btn btn-primary" type="submit" name="commit" value="Sign In" />
											</form>
										</div>
									</li>
									
								</ul>
							</div><!-- /.nav-collapse -->
						</div>
					</div><!-- /navbar-inner -->
				</div><!-- /navbar -->
			</div>
		</div><!-- end nav -->		<div class="row">
	
	<div class="span4 well lform">
		<form:form action="search.do" method="GET">
			<fieldset>
				<div class="row">
					<div class="span4">
						<div class="control-group">
							<label for="focusedInput" class="control-label">Location</label>
							<div class="controls">
								<input type="text" value="" placeholder="<fmt:message key="logement.commune" />" id="focusedInput" class="input-xlarge">
							</div>
						</div>	
						
						<div class="row">
							<div class="span2">							  
								<div class="control-group">
									<label for="focusedInput" class="control-label">Search radius:</label>
									<div class="controls">
										<select class="input-medium focused">
											<option>This area only</option>
											<option>Within 1/4 mile</option>
											<option>Within 1/2 mile</option>
											<option>Within 1 mile</option>
											<option>Within 3 miles</option>
											<option>Within 5 miles</option>
											<option>Within 10 miles</option>
											<option>Within 15 miles</option>
											<option>Within 20 miles</option>
											<option>Within 30 miles</option>
											<option>Within 40 miles</option>
										</select>				
									</div>
								</div>
							</div>
							<div class="span2 ">	
								<label for="focusedInput" class="control-label"><fmt:message key="logement.type" /></label>
								<div class="controls">
									<select class="input-medium focused">
										<option>Any</option>
										<option>Houses</option>
										<option>Flats/ Apartments</option>
										<option>Bungalows</option>
										<option>Land</option>
										<option>Commercial property</option>
										<option>Other</option>
									</select>
								</div>
							</div>		
						</div>	
						<div class="row">						  
							<div class="span2">							  
								<div class="control-group">
									<label for="focusedInput" class="control-label">Number of bedrooms:</label>
									<div class="controls">
										<select class="input-medium focused">
											<option>Any</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5+</option>
										</select>				
									</div>
								</div>
							</div>
							<div class="span2">	
								<label for="focusedInput" class="control-label">Rent or Buy</label>
								<div class="controls">
									<select class="input-medium focused">
										<option>Any</option>
										<option>Rent</option>
										<option>Buy</option>
									</select>
								</div>
							</div>		
							
						</div>							
						<div class="row">						  
							<div class="span2">							  
								<div class="control-group">
									<label for="focusedInput" class="control-label">Minimum Price</label>
									<div class="controls">
										<select class="input-medium focused">
											<option selected="selected" value="">No min</option><option value="50000">50,000</option><option value="60000">60,000</option><option value="70000">70,000</option><option value="80000">80,000</option><option value="90000">90,000</option><option value="100000">100,000</option><option value="110000">110,000</option><option value="120000">120,000</option><option value="125000">125,000</option><option value="130000">130,000</option><option value="140000">140,000</option><option value="150000">150,000</option><option value="160000">160,000</option><option value="170000">170,000</option><option value="175000">175,000</option><option value="180000">180,000</option><option value="190000">190,000</option><option value="200000">200,000</option><option value="210000">210,000</option><option value="220000">220,000</option><option value="230000">230,000</option><option value="240000">240,000</option><option value="250000">250,000</option><option value="260000">260,000</option><option value="270000">270,000</option><option value="280000">280,000</option><option value="290000">290,000</option><option value="300000">300,000</option><option value="325000">325,000</option><option value="350000">350,000</option><option value="375000">375,000</option><option value="400000">400,000</option><option value="425000">425,000</option><option value="450000">450,000</option><option value="475000">475,000</option><option value="500000">500,000</option><option value="550000">550,000</option><option value="600000">600,000</option><option value="650000">650,000</option><option value="700000">700,000</option><option value="800000">800,000</option><option value="900000">900,000</option><option value="1000000">1,000,000</option><option value="1500000">1,500,000</option><option value="2000000">2,000,000</option><option value="3000000">3,000,000</option><option value="">No min</option>
										</select>				
									</div>
								</div>
							</div>
							<div class="span2">	
								<label for="focusedInput" class="control-label">Maximum Price</label>
								<div class="controls">
									<select class="input-medium focused">
										<option selected="selected" value="">No min</option><option value="50000">50,000</option><option value="60000">60,000</option><option value="70000">70,000</option><option value="80000">80,000</option><option value="90000">90,000</option><option value="100000">100,000</option><option value="110000">110,000</option><option value="120000">120,000</option><option value="125000">125,000</option><option value="130000">130,000</option><option value="140000">140,000</option><option value="150000">150,000</option><option value="160000">160,000</option><option value="170000">170,000</option><option value="175000">175,000</option><option value="180000">180,000</option><option value="190000">190,000</option><option value="200000">200,000</option><option value="210000">210,000</option><option value="220000">220,000</option><option value="230000">230,000</option><option value="240000">240,000</option><option value="250000">250,000</option><option value="260000">260,000</option><option value="270000">270,000</option><option value="280000">280,000</option><option value="290000">290,000</option><option value="300000">300,000</option><option value="325000">325,000</option><option value="350000">350,000</option><option value="375000">375,000</option><option value="400000">400,000</option><option value="425000">425,000</option><option value="450000">450,000</option><option value="475000">475,000</option><option value="500000">500,000</option><option value="550000">550,000</option><option value="600000">600,000</option><option value="650000">650,000</option><option value="700000">700,000</option><option value="800000">800,000</option><option value="900000">900,000</option><option value="1000000">1,000,000</option><option value="1500000">1,500,000</option><option value="2000000">2,000,000</option><option value="3000000">3,000,000</option><option value="">No min</option>
									</select>
								</div>
							</div>		
							
						</div>	
						
					</div>
					<div class="row">	
						
						<div class="span2 pull-right" style="margin-top: 10px;">
							<button class="btn btn-primary pull-right" type="submit">Search</button>
							
						</div>
					</div>						
					
				</div>
				
			</fieldset>
		</form:form>
	</div>
	<div class="span7 home_carousel no_margin_left pull-right">
		<!-- Start slideshow-carousel -->
		<div id="carousel-loader">
			
		</div>
		<div id="carousel" class="showcase">
									<div class="showcase-slide">
				<div class="showcase-content">
					<a href="map_properties.html"><img src="css/images/carousel_1.jpg" alt=""></a>
				</div>
				
				<div class="showcase-caption carousel-caption">
					<a href="map_properties.html"><h4>Map of properties</h4>
					<p>Interested in buying a flat or house in Richmond?</p></a>
				</div>
			</div>
						<div class="showcase-slide">
				<div class="showcase-content">
					<a href="listings.html"><img src="css/images/carousel_2.jpg" alt=""></a>
				</div>
				
				<div class="showcase-caption carousel-caption">
					<a href="listings.html"><h4>Search listings</h4>
					<p>View a listing of all the homes according to your taste, wherever you want</p></a>
				</div>
			</div>
						<div class="showcase-slide">
				<div class="showcase-content">
					<a href="property.html"><img src="css/images/carousel_3.jpg" alt=""></a>
				</div>
				
				<div class="showcase-caption carousel-caption">
					<a href="property.html"><h4>View a property</h4>
					<p>This is our featured house of the day, good value and spacious enough for a family of 5</p></a>
				</div>
			</div>
						
		</div>
		<!-- // end of slideshow-carousel -->
		
	</div>
</div>

<div class="row">
	<div class="span4">
		<h3><span>Latest</span> properties</h3>
		<a href="map_properties.html"><img src="css/images/latest_properties.jpg" alt="" /></a>
		<p>Sign up for our weekly newsletter and stay up-to-date with the latest offers, and newest products.<a href="map_properties.html" class="pull-right">more...</a></p>
	</div>		
	<div class="span4">
		<h3><span>New</span> homes</h3>
		<a href="listings.html"><img src="css/images/new_homes.png" alt="" /></a>
		<p>Sign up for our weekly newsletter and stay up-to-date with the latest offers, and newest products.<a href="listings.html" class="pull-right">more...</a></p>
	</div>		
	<div class="span4">
		<h3><span>Homes</span> abroad</h3>
		<a href="listings.html"><img src="css/images/homes_abroad.png" alt="" /></a>
		<p>Sign up for our weekly newsletter and stay up-to-date with the latest offers, and newest products.<a href="listings.html" class="pull-right">more...</a></p>
	</div>		
</div>		



<div class="row">
	<br />
	<div class="span4">
		<h3><span>Popular</span> cities</h3>
		
		
		<div id="home_map_canvas"></div>
		
		
		
	</div>
	<div class="span8">
		<h3><span>Featured</span> listings</h3>
		
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Description</th>
					<th>Region</th>
					<th>Price</th>
					<th>Days on market</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="property.html">8 bedroom house for sale</a></td>
					<td>London</td>
					<td>&pound;39,950,000</td>
					<td>1 day</td>
					<td><a href="property.html">View</a></td>
				</tr>     
				<tr>
					<td><a href="property.html">2 bedroom bungalow for sale</a></td>
					<td>London</td>
					<td>&pound;215,000</td>
					<td>3 days</td>
					<td><a href="property.html">View</a></td>
				</tr>      
				<tr>
					<td><a href="property.html">3 bedroom house for sale</a></td>
					<td>London</td>
					<td>&pound;470,000</td>
					<td>2 weeks</td>
					<td><a href="property.html">View</a></td>
				</tr>  	 
				<tr>
					<td><a href="property.html">3 bedroom house for rent</a></td>
					<td>London</td>
					<td>&pound;1,000pm</td>
					<td>1 month</td>
					<td><a href="property.html">View</a></td>
				</tr>        
				<tr>
					<td><a href="property.html">6 bedroom house for sale</a></td>
					<td>London</td>
					<td>&pound;19,950,000</td>
					<td>2 months</td>
					<td><a href="property.html">View</a></td>
				</tr>     
				<tr>
					<td><a href="property.html">5 bedroom bungalow for sale</a></td>
					<td>London</td>
					<td>&pound;950pm</td>
					<td>3 months</td>
					<td><a href="property.html">View</a></td>
				</tr>      
				<tr>
					<td><a href="property.html">3 bedroom house for sale</a></td>
					<td>London</td>
					<td>&pound;470,000</td>
					<td>1 year</td>
					<td><a href="property.html">View</a></td>
				</tr>  	    
				
			</tbody>
		</table>
		More cities : <a href="map_properties.html">London</a>, <a href="map_properties.html">Scotland</a>, <a href="map_properties.html">Wales</a>, <a href="map_properties.html">Northern Ireland</a>, <a href="map_properties.html">Birmingham</a>, <a href="map_properties.html">Leeds</a>, <a href="map_properties.html">Glasgow</a>, <a href="map_properties.html">Sheffield</a>, <a href="map_properties.html">Bradford</a>, <a href="map_properties.html">Edinburgh</a>, <a href="map_properties.html">Liverpool</a>,  <a href="map_properties.html">Manchester</a>
		
	</div>
	
</div>

<footer>
	<hr />	
	<p class="pull-right"><a href="#">Back to top</a></p>
	<p>
		<a href="index.html">Home</a> |
		<a href="about.html">About</a> |
		<a href="typography.html">Typography</a> |
		<a href="terms.html">Terms and Conditions</a> |
		<a href="contact.html">Contact Us</a><br />
		All content &copy; 2012 | <a href="about.html">Built with Twitter Bootstrap</a> | <a href="https://wrapbootstrap.com/">WrapBootstrap</a>.
	</p>
</footer>

</div> <!-- /container -->

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="js/jquery.aw-showcase/jquery.aw-showcase.js"></script>
<link rel="stylesheet" href="js/jquery.aw-showcase/css/style.css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="js/badger/badger.min.css" />
<script type="text/javascript" src="js/badger/badger.min.js"></script>

<link rel="stylesheet" href="js/sticky/sticky.min.css" />
<script type="text/javascript" src="js/sticky/sticky.min.js"></script>

<script type="text/javascript" src="js/portamento-min.js"></script>
<script type="text/javascript" src="js/global.js"></script>

</body>
</html>