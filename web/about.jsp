<%-- 
    Document   : about
    Created on : Jun 20, 2017, 2:08:59 AM
    Author     : Sachin Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
   
	
	<!--for-mobile-apps-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Mall Responsive Website Template, Web Templates, Flat Web Templates, Android Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!--//for-mobile-apps-->
	
	<!-- Custom-Theme-Files -->
    <!-- Bootstrap-CSS --> 			<link rel="stylesheet" href="about_css/bootstrap.min.css">
    <!-- JQuery --> 				<script src="about_js/jquery.min.js"></script>
    <!-- Bootstrap-Main --> 		<script src="about_js/bootstrap.min.js">		</script>
    <!-- Index-Page-Styling --> 	<link rel="stylesheet" href="about_css/style.css" type="text/css" media="all">
	<!-- Font-awesome-Styling --> 	<link rel="stylesheet" href="about_css/font-awesome.css" type="text/css" media="all">
	

<!-- digital clock starts here -->
<script src="about_js/flipclock.js"></script>	
<link rel="stylesheet" href="about_css/flipclock.css">
<!-- digital clock ends here -->	

<!-- Calender js -->
<script type="text/javascript">
               var mydate=new Date();
               var year=mydate.getYear();
               if(year<1000)
                 year+=1900;
                 var day=mydate.getDay();
                 var month=mydate.getMonth();
                 var daym=mydate.getDate();
               if(daym<10)
                 daym="0"+daym;
                 var dayarray=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
                 var montharray=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
                 
</script>
<!--//Calender js -->

</head>
<body>


	 <jsp:include page="home/header.jsp"/> 	
	<div class="a-banner"> 	<!--banner -->
	</div> 					<!--//banner -->
	
	  

<!-- breadcrumbs -->
	<div class="breadcrumb_about">
		<div class="container">
			<ul>
				<li><a href="index.jsp"><span class="fa fa-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
				<li>About Us</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumbs -->

<!--about-grid1-->
<div class="about-grid1-w3l">
	<div class="container">
		<div class="a-grid1-padding-w3ls">
		  <h2> About us </h2>
		  
			<div class="col-md-6 a-grid1-img">
				<img src="./about_images/img10.jpg" alt="image" class="img-responsive">
			</div>
			
			<div class="col-md-6 a-grid1-text-w3ls">
				<h4> Heading about mall </h4>
				<p>	Lorem Ipsum is simply dummy text of the printing and typesetting industry since	Lorem Ipsum is simply dummy text of the
					printing and typesetting  has been the industry's standard dummy text ever since. 
				</p>
				
				<div class="a-grid1-a">
					<div class="col-xs-2 a-grid1-icon">
						<i class="fa fa-paper-plane" aria-hidden="true"></i>
					</div>
					<div class="col-xs-10 a-grid1-text-a">
						<p>Sunt in culpa qui officia deserunt mollit.Duis aute irure dolor velit esse cillum dolore eu fugiat nulla pariatur.</p>
					</div>
				  <div class="clearfix"> </div>
				</div>
				<div class="a-grid1-b">
					<div class="col-xs-2 a-grid1-icon">
						<i class="fa fa-leaf" aria-hidden="true"></i>
					</div>
					<div class="col-xs-10 a-grid1-text-b">
						<p>Sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor aute iruren reprehenderit 
							velit esse cillum dolore eu fugiat nulla pariatur.</p>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--//about-grid1-->

<!--about-grid2-->
<div class="about-grid2">
	<div class="container">
		<div class="about-grid2-padding-agileits">
			
			<div class="col-md-6 a-grid2-left">
				<div class="calender-clock">
					<div class="Calender">
						<div class="day">
							<script type="text/javascript">
								document.write(""+dayarray[day]+"")
							</script>
						</div>
						<div class="mdy">
							<script type="text/javascript">
							document.write(""+montharray[month]+" "+daym+", "+year+"")
							</script>
						</div>
					  <div class="clearfix"> </div>
					</div>	<!-- calender Ends -->
					
					<div class="digital-clock">
					  <!-- digital clock starts here -->
						<div class="clock" style="margin:2em;"></div>
							<script type="text/javascript">
								var clock;
									$(document).ready(function() {
									clock = $('.clock').FlipClock({
									clockFace: 'TwelveHourClock'
									});
								});
							</script>
					  <!-- digital clock ends here -->	
					</div>
				</div>
			</div>		
			<div class="col-md-6 a-grid2-right">
				<div class="open-timings">
					<h2> Opening Timings</h2>
					<h5> <span> Monday - Friday   </span>  : 11.00 am - 08.00 pm </h5> 
					<h5> <span> Saturday - Sunday </span>  : 10.00 am - 09.00 pm </h5>
				</div>
			</div>
				
		  <div class="clearfix"> </div>		
		</div>		
	</div>
</div>
<!--//about-grid2-->


<!--about-grid3-->

<div class="about-grid3">
	<div class="container">
		<div class="a-grid3-padding-agile">
    	  <h3>Meet Our Management</h3>
		  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
			<div class="team">
				<div class="col-md-3 team_grid">
					<img src="about_images/t1.jpg" alt=" " class="img-responsive" />
					<h4>Ian	Sutherland <span>General Manager</span></h4>
					<div class="social-team-grid">
						<ul class="social-team">
							<li><a href="#" class="facebook"> 		<i class="fa fa-facebook" aria-hidden="true"></i> 		</a></li>
							<li><a href="#" class="twitter"> 		<i class="fa fa-twitter" aria-hidden="true"></i>		</a></li>
							<li><a href="#" class="vk"> 			<i class="fa fa-vk" aria-hidden="true"></i>				</a></li>
							<li><a href="#" class="instagram">		<i class="fa fa-linkedin" aria-hidden="true"></i>    	</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 team_grid">
					<img src="about_images/t3.jpg" alt=" " class="img-responsive" />
					<h4>Owen Terry<span>HR Manager</span></h4>
					<div class="social-team-grid">
						<ul class="social-team">
							<li><a href="#" class="facebook"> 		<i class="fa fa-facebook" aria-hidden="true"></i> 		</a></li>
							<li><a href="#" class="twitter"> 		<i class="fa fa-twitter" aria-hidden="true"></i>		</a></li>
							<li><a href="#" class="vk"> 			<i class="fa fa-vk" aria-hidden="true"></i>				</a></li>
							<li><a href="#" class="instagram">		<i class="fa fa-linkedin" aria-hidden="true"></i>    	</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 team_grid">
					<img src="about_images/t2.jpg" alt=" " class="img-responsive" />
					<h4>Justin	Simpson<span>Sales Manager</span></h4>
					<div class="social-team-grid">
						<ul class="social-team">
							<li><a href="#" class="facebook"> 		<i class="fa fa-facebook" aria-hidden="true"></i> 		</a></li>
							<li><a href="#" class="twitter"> 		<i class="fa fa-twitter" aria-hidden="true"></i>		</a></li>
							<li><a href="#" class="vk"> 			<i class="fa fa-vk" aria-hidden="true"></i>				</a></li>
							<li><a href="#" class="instagram">		<i class="fa fa-linkedin" aria-hidden="true"></i>    	</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 team_grid">
					<img src="about_images/t4.jpg" alt=" " class="img-responsive" />
					<h4>Smith Allen <span>Technical Manager</span></h4>
					<div class="social-team-grid">
						<ul class="social-team">
							<li><a href="#" class="facebook"> 		<i class="fa fa-facebook" aria-hidden="true"></i> 		</a></li>
							<li><a href="#" class="twitter"> 		<i class="fa fa-twitter" aria-hidden="true"></i>		</a></li>
							<li><a href="#" class="vk"> 			<i class="fa fa-vk" aria-hidden="true"></i>				</a></li>
							<li><a href="#" class="instagram">		<i class="fa fa-linkedin" aria-hidden="true"></i>    	</a></li>
						</ul>
					</div>
				</div>
			  <div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>

<!--//about-grid3-->

<!--Footer-->	

<!--//Footer-->	
 <div>
                <jsp:include page="home/footer.jsp"/> 
   </div>
</body>
</html>
