<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<!-- Title -->
	<title>Substance - Professional Bootstrap Template</title>
	<!-- Meta -->
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
	<!-- Favicon -->
	<link href="favicon.html" rel="shortcut icon">
	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
	<!-- Template CSS -->
	<link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
	<!-- Google Fonts-->
	<link href="http://fonts.googleapis.com/css?family=Lato:400,300" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">
	<script>
	
	   var webSocket;
	   
	   
	   function  openSocket(){
		   
		   if(webSocket !== undefined && webSocket.readyState !== WebSocket.CLOSED){
			   console.log("WebSocket is alredy opened");
			   return;
			   
		   }
		   
		   
		   webSocket = new WebSocket("ws://localhost:8080/billreport/chat");
		   
		   
		   webSocket.onopen = function(event){
			   if(event.data === undefined)
				return;
			   
			   console.log(event.data);
		   };
		   
		   webSocket.onmessage = function(event){
			   document.getElementById("txt").value=event.data;
			   alert(event.data);
		   };
		   
		   webSocket.onclose = function(event){
			   
			   console.log("Connection closed");
		   };
	   }
	   
	   function send(){
           console.log("called send");
           openSocket();
           console.log("called send after opening");
              var text = document.getElementById("txt").value;
              webSocket.send(text);
              //closeSocket();
         
          }
         
          function closeSocket(){
              webSocket.close();
          }
	     
	
	
	
	</script>
</head>
<body>
	<div id="pre_header" class="visible-lg"></div>
	<div id="header" class="container">
		<div class="row">
			<!-- Logo -->
			<div class="logo">
				<a href="index.html" title="">
					<img src="assets/img/logo.png" alt="Logo" />
				</a>
			</div>
			<!-- End Logo -->
			<!-- Top Menu -->
			<div class="col-md-12 margin-top-30">
				<div id="hornav" class="pull-right visible-lg">
					<ul class="nav navbar-nav">
						<li><a href="index.html">Home</a></li>
						<li><span>Features</span>
							<ul>
								<li class="parent"><span>Typography</span>
									<ul>
										<li><a href="features-typo-basic.html">Basic Typography</a></li>
										<li><a href="features-typo-blockquotes.html">Blockquotes</a></li>
									</ul>
								</li>
								<li class="parent"><span>Components</span>
									<ul>
										<li><a href="features-labels.html">Labels</a></li>
										<li><a href="features-progress-bars.html">Progress Bars</a></li>
										<li><a href="features-panels.html">Panels</a></li>
										<li><a href="features-pagination.html">Pagination</a></li>
									</ul>
								</li>
								<li class="parent"><span>Icons</span>
									<ul>
										<li><a href="features-icons.html">Icons General</a></li>
										<li><a href="features-icons-social.html">Social Icons</a></li>
										<li><a href="features-icons-font-awesome.html">Font Awesome</a></li>
										<li><a href="features-icons-glyphicons.html">Glyphicons</a></li>
									</ul>
								</li>
								
								<li><a href="features-testimonials.html">Testimonials</a></li>
								<li><a href="features-accordions-tabs.html">Accordions & Tabs</a></li>
								<li><a href="features-buttons.html">Buttons</a></li>
								<li><a href="features-carousels.html">Carousels</a></li>
								<li><a href="features-grid.html">Grid System</a></li>
								<li><a href="features-animate-on-scroll.html">Animate On Scroll</a></li>
							</ul>
						</li>
						<li><span>Pages</span>
							<ul>
								<li><a href="pages-about-us.html">About Us</a></li>
								<li><a href="pages-services.html">Services</a></li>
								<li><a href="pages-faq.html">F.A.Q.</a></li>
								<li><a href="pages-about-me.html">About Me</a></li>
								<li><a href="pages-full-width.html">Full Width</a></li>
								<li><a href="pages-left-sidebar.html">Left Sidebar</a></li>
								<li><a href="pages-right-sidebar.html">Right Sidebar</a></li>
								<li><a href="pages-login.html">Login</a></li>
								<li><a href="pages-sign-up.html">Sign-Up</a></li>
								<li><a href="pages-404.html">404 Error Page</a></li>
							</ul>
						</li>
						<li><span>Portfolio</span>
							<ul>
								<li><a href="portfolio-2-column.html">2 Column</a></li>
								<li><a href="portfolio-3-column.html">3 Column</a></li>
								<li><a href="portfolio-4-column.html">4 Column</a></li>
								<li><a href="portfolio-6-column.html">6 Column</a></li>
							</ul>
						</li>
						<li><span>Blog</span>
							<ul>
								<li><a href="blog-list.html">Blog</a></li>
								<li><a href="blog-single.html">Blog Single Item</a></li>
							</ul>
						</li>
						<li><a href="contact.html">Contact</a></li>
					</ul>				</div>
				</div>
				<div class="clear"></div>
				<!-- End Top Menu -->
			</div>
		</div>
		<!-- === END HEADER === -->
		<div id="content" class="container">
			<!-- === BEGIN CONTENT === -->	<div class="row margin-vert-30">
			<!-- Main Column -->
			<div class="col-md-9">
				<!-- Main Content -->
				<div class="headline"><h2>Contact Form</h2></div>
				<br>
				<!-- Contact Form -->
				<form>
					<label>Name</label>
					<div class="row margin-bottom-20">
						<div class="col-md-6 col-md-offset-0">
							<input class="form-control" type="text">
						</div>
					</div>
					
					<label>Email <span class="color-red">*</span></label>
					<div class="row margin-bottom-20">
						<div class="col-md-6 col-md-offset-0">
							<input class="form-control" type="text">
						</div>
					</div>
					
					<label>Message</label>
					<div class="row margin-bottom-20">
						<div class="col-md-8 col-md-offset-0">
							<textarea id="txt" rows="8" class="form-control"></textarea>
						</div>
					</div>
					
					<p><button type="button" onclick="send()" class="btn btn-primary">Send Message</button></p>
				</form>
				<!-- End Contact Form -->
				<!-- End Main Content -->
			</div>
			<!-- End Main Column -->
				
			<!-- End Side Column -->
		</div>
	</div>
	<!-- === END CONTENT === -->
	<!-- === BEGIN FOOTER === -->
	
	<!-- End Footer Menu -->
</div>
</div>
<!-- JS -->
<script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/js/scripts.js"></script>
<!-- Isotope - Portfolio Sorting -->
<script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
<!-- Mobile Menu - Slicknav -->
<script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
<!-- Animate on Scroll-->
<script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
<!-- Slimbox2-->
<script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
<!-- Modernizr -->
<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
<!-- End JS -->
</body>
</html>
<!-- === END FOOTER === -->