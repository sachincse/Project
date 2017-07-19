<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Reoweb</title>
	<!--for-mobile-apps-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="MRS Mall Responsive Website Template, Web Templates, Flat Web Templates, Android Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!--//for-mobile-apps-->
	
	<!-- Custom-Theme-Files -->
    <!-- Bootstrap-CSS --> 			<link rel="stylesheet" href="about_css/bootstrap.min.css">
    <!-- JQuery --> 				<script src="about_js/jquery.min.js"></script>
    <!-- Bootstrap-Main --> 		<script src="about_js/bootstrap.min.js">		</script>
    <!-- Index-Page-Styling --> 	<link rel="stylesheet" href="about_css/style.css" type="text/css" media="all">
	<!-- Font-awesome-Styling --> 	<link rel="stylesheet" href="about_css/font-awesome.css" type="text/css" media="all">

	
<!-- Js for Responsive slider -->	
	<script src="about_js/modernizr.js" type="text/javascript"></script>
	<script src="about_js/responsiveslides.min.js"></script>
	<script> 
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 1
		  $("#slider1").responsiveSlides({
			 auto: true,
			 nav: true,
			 speed: 500,
			 namespace: "callbacks",
		  });
		});
	</script>

	<!--JS for animate-->
	<link href="about_css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="about_js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
	<!--//end-animate-->

	<script src="about_js/jquery.countdown.js"></script>
	<script src="about_js/script.js"></script>
	<link rel="stylesheet" href="about_css/jquery.countdown.css" />
	<link rel="stylesheet" href="about_css/swipebox.css">
        
        
        <jsp:include page="home/headerscript.jsp"/> 
	
</head>

<body>

<div class="header">

		<div class="nav">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
                                                    <a class="navbar-brand" href=""><img src="" alt=""><h1><c:out value="${admin.getCName()}"></c:out></h1></a>
						</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						
						<ul class="nav navbar-nav navbar-right menu slide">
							
                                                     <c:choose>
                                                          <c:when test="${sessionScope.user=='admin'}">
                                                      <li><a href="SignUpController?logout=logout" class="orange">Logout</a></li>
                                                        <li><a href="Admin_Controller?action=edit&admin_id=<c:out value="${admin.getId()}"></c:out>" class="orange">Edit</a></li>
                                                      </c:when>
                                                      <c:otherwise>
                                                      <li><a href="index.jsp" class="orange">Home</a></li>
                                                      </c:otherwise>
                                                     </c:choose>
                                                    
                                                    
                                                    
							
                                                        <li><a href="map.jsp?action=<c:out value="${admin.getAddress()}"></c:out>" class="orange">Map</a></li>
							<li><a href="Review_Controller?id=<c:out value="${admin.getId()}"></c:out>" class="orange">Feedback and Reviews</a></li>
                                                        <li><a href="about.jsp" class="orange">About Us</a></li>
						</ul>
					       
					</div><!-- navbar-collapse -->
				</div><!-- container -->
			</nav>
			<div class="clearfix"></div>
		</div> <!-- Nav Ends -->
		
		
                	
	<div class="banner">
	<!-- start slider -->
       <div id="fwslider">
         <div class="slider_container">
             
         <c:forEach items="${images}" var ="image">
             
              <div class="slide"> 
               <img src="images/<c:out value="${image}"></c:out>" class="img-responsive" alt=""/>
            </div>
             
             
         </c:forEach>
           
             
            <!-- /Duplicate to create more slides -->

            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
       </div>
       <!--/slider -->
      </div>
                
</div><!--//header-->


	
	
<div class="h-about">
	<div class="h-about-padding-agile">
            <h2> About <c:out value="${admin.getCName()}"></c:out> </h2>
		<div class="col-md-4 h-about-img">
                    <img src="./images/<c:out value="${images[0]}"></c:out>" alt="image" class="img-responsive">
		</div>
		<div class="col-md-4 h-about-text">
			<h4> Description </h4>
				<p>	
                                <c:out value = "${admin.getP()}"></c:out>
				</p>
                        <h4> Timing Description </h4>
				<p>	
                                <c:out value="${admin.getT()}"></c:out>
				</p>
		</div>
		
			<div class="col-md-4 h-about-img">
                             <img src="./images/<c:out value="${images[1]}"></c:out>" alt="image" class="img-responsive">
		        </div>
		
	  <div class="clearfix"> </div>
	</div>
</div><!--//h-about-->	
	
<div class="h-grid3"><!--h-grid3-->
	<div class="h-grid3-padding">
	  <h2>Our Details </h2>
			<div class="col-md-2 col-md-offset-1 h-grid3-all scroll wow zoomIn" data-wow-delay="1.5s">
				
                            <i class="fa fa-address-card-o" aria-hidden="true"></i>

				<h4>Address</h4>
                                <p><c:out value="${admin.getAddress()}"></c:out></p>
			</div>
			<div class="col-md-2 h-grid3-all scroll wow zoomIn" data-wow-delay="1s">
				<i class="fa fa-users" aria-hidden="true"></i>
				<h4>Owner</h4>
                                <p><c:out value="${admin.getName()}"></c:out><br>
                                   <c:out value="${admin.getMobile()}"></c:out>
                                   <c:out value="${admin.getEmail()}"></c:out>
                                </p>
			</div>
			<div class="col-md-2 h-grid3-all scroll wow zoomIn" data-wow-delay="0.4s">
				<i class="fa fa-building" aria-hidden="true"></i>
                                <h4><c:out value="${admin.getCName()}"></c:out></h4>
                        <p><c:out value="${admin.getCEmail()}"></c:out></p>
                        <p><c:out value="${admin.getCMobile()}"></c:out></p>
			</div>
			<div class="col-md-2 h-grid3-all scroll wow zoomIn" data-wow-delay="1s">
				<i class="fa fa-laptop" aria-hidden="true"></i>
				<h4>Domain</h4>
                                <p><c:out value="${admin.getWebsite()}"></c:out></p>
			</div>
			<div class="col-md-2 h-grid3-all scroll wow zoomIn" data-wow-delay="1.5s">
				<i class="fa fa-money" aria-hidden="true"></i>
				<h4>Range</h4>
                                <p><c:out value="${admin.getRange()}"></c:out></p>
			</div>

		  <div class="clearfix"> </div>
		</div>
</div><!--//h-grid3-->	
	
<div class="h-grid4"><!--h-grid4-->	
<div class="h-grid5-w3layouts"><!--h-grid5 gallery-->
	<div class="container">
		<div class="h-grid5-padding">
			<h3>Gallery</h3>
                        
                         <% int count = 1;%>
                    <c:forEach items="${g_images}" var ="gallery">
                       <% if(count%4==1)
                       {%>
                         <div class="h-grid5"> 
                      <% }%>
			
			
				<div class="col-md-3  h-grid5-all " >
                                    <a href="images/<c:out value="${gallery}"></c:out>" class="swipebox hovereffect">  <img src="images/<c:out value="${gallery}"></c:out>" alt="image" class="hex"> </a>
				</div>

			  
                          
                          
                           <% if(count%4==0)
                      {
                          %>
                    </div>
                       <%   
                      }count++;
                        %>
                    </c:forEach>
                    <% if(count%4!=1)
                    {
                        %></div><%
                    }%>
                          
                          
			
			

			
		  <div class="clearfix"> </div>
		</div>
		<!-- swipe box js -->
		<script src="about_js/jquery.swipebox.js"></script>
				<script type="text/javascript">
					;( function( $ ) {

						$( '.swipebox' ).swipebox();

					} )( jQuery );
				</script>
		<!-- //swipe box js -->
	</div>
</div><!--//h-grid5-->		
</div><!--//h-grid4-->		
	

	
	
<div class="footer-w3l">
	<div class="container">
		
        </div>
</div>
	
	
</body>
</html>