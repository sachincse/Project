
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<jsp:include page="home/header.jsp"/> 
<jsp:include page="home/header_top.jsp"/>

</head>
<body>
    
    
    	
    
    
    
	<div class="banner">
	<!-- start slider -->
       <div id="fwslider">
         <div class="slider_container">
            <div class="slide"> 
                <!-- Slide image -->
               <img src="images/slider1.jpg" class="img-responsive" alt=""/>
                <!-- /Slide image -->
                <!-- Texts container -->
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <!-- Text title -->
                        <h1 class="title">TCS<br>INTERNSHIP</h1>
                        <!-- /Text title -->
                        <div class="button"><a href="about.jsp">See Details</a></div>
                    </div>
                </div>
               <!-- /Texts container -->
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
               <img src="images/slider2.jpg" class="img-responsive" alt=""/>
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <h1 class="title">TCS<br>INTERNSHIP</h1>
                       	<div class="button"><a href="about.jsp">See Details</a></div>
                    </div>
                </div>
            </div>
            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
       </div>
       <!--/slider -->
      </div>
    <div class="features">
		<div class="container">
			<h3 class="m_3">Category</h3>
			<div class="close_but"><i class="close1"> </i></div>
			  <div class="row">
				<div class="col-md-3 top_box">
                                    <div class="view view-ninth"><a href="Category?action=Resturants&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic1.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                   </a> </div
                  </div>
                  <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                  <p class="m_5">claritatem insitam</p>
                </div>
                <div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="Category?action=Movies&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic2.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                   <p class="m_5">claritatem insitam</p>
				</div>
				<div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="Category?action=Car Rent&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic3.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                   <p class="m_5">claritatem insitam</p>
				</div>
				<div class="col-md-3 top_box1">
					<div class="view view-ninth"><a href="Category?action=House Rent&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                     </a> </div>
                   <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                   <p class="m_5">claritatem insitam</p>
                   <p class="m_5"><br></p>
                   <p class="m_5"><br></p>
				</div>
			</div>
             <div class="row">
				<div class="col-md-3 top_box">
				  <div class="view view-ninth"><a href="Category?action=Doctor&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic1.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                   </a> </div
                  </div>
                  <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                  <p class="m_5">claritatem insitam</p>
                </div>
                <div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="Category?action=Hotel&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic2.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                   <p class="m_5">claritatem insitam</p>
				</div>
				<div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="Category?action=Banquet Hall&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic3.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                   <p class="m_5">claritatem insitam</p>
				</div>
				<div class="col-md-3 top_box1">
					<div class="view view-ninth"><a href="Category?action=Personal Care&location=<c:out value="${search}"></c:out>">
                    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>Hover Style #9</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                      </div>
                     </a> </div>
                   <h4 class="m_4"><a href="#">nostrud exerci ullamcorper</a></h4>
                   <p class="m_5">claritatem insitam</p>
				</div>
			</div>
		 </div>
	    </div>
	
            <p><br></p>
            <!-- stats -->
	<div class="stats">
		<div class="container">
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-cutlery" aria-hidden="true"></i>
				</div>
                            <p class="counter"><c:out value="${total[0]}"></c:out></p>
				<h3>Resturants</h3>
			</div>
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-user-md" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[4]}"></c:out></p>
				<h3>Doctor</h3>
			</div>
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-car" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[2]}"></c:out></p>
				<h3>Car Rent</h3>
			</div>
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-home" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[3]}"></c:out></p>
				<h3>Home Rent</h3>
			</div>
                        <div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-h-square" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[5]}"></c:out></p>
				<h3>Hotels</h3>
			</div>
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-users" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[6]}"></c:out></p>
				<h3>Banquet Hall</h3>
			</div>
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-bed" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[7]}"></c:out></p>
				<h3>Personal Care</h3>
			</div>
			<div class="col-md-3 w3_counter_grid">
				<div class="w3_agileits_counter_grid">
					<i class="fa fa-film" aria-hidden="true"></i>
				</div>
				<p class="counter"><c:out value="${total[1]}"></c:out></p>
				<h3>Theatre</h3>
			</div>

			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //stats -->
<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
		<script>
			$('.counter').countUp();
		</script>
<!-- //stats -->

<p><br></p>
            <h3 class="m_3">Map</h3>
	 <div class="map">
					<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px"></a></small>
				  </div>
            <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>
</body>	
</html>