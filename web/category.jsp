
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<jsp:include page="home/header.jsp"/> 
</head>
<body>
    <div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="row">
				
				<div class="col-md-3">
				  <div class="box-info-product">
                                      <div class="btn_form">
                                          <form action="FilterController" method = "post">
					<p class="price2">FILTER</p>
					       <ul class="prosuct-qty">
								<span>category</span>
                                                                <select name="category">
                                                                    
							            <option>Resturants</option>
                                                                    <option >Movies</option>
                                                                    <option >Car Rent</option>
                                                                    <option >House Rent</option>
                                                                    <option >Doctor</option>
                                                                    <option >Hotel</option>
                                                                    <option >Banquet Hall</option>
                                                                    <option >Personal Care</option>
								</select>
							</ul>
                                        <ul class="prosuct-qty">
								<span>Range</span>
                                                                <select name="range" >
                                                                        
									<option>Rs.0-Rs.500</option>
									<option>Rs.500-Rs.1000</option>
									<option>Above Rs.1000</option>

								</select>
							</ul>
                                        
                                         <ul class="prosuct-qty">
								<span>Other</span>
                                                                <select name="other">
                                                                       
									<option>Newest</option>
									<option>Old</option>
									<option>Increased by Popularity</option>
									<option>Decreased by Popularity</option>

								</select>
							</ul>


							
							   
								 <input type="submit" value="Go" title="">
							  </form>
							</div>
				   </div>
			   </div>
                                <% int c = 1,k=2; %>
                                <c:forEach items="${details}" var ="detail">
                                    <% if(c%k==1){ %>
                             <div class="desc">
                                 <h4> <% if(c==1){
                                     %>&nbsp;
                                     <% } %>
                                  <c:out value="${detail.getCategory()}"></c:out></h4>
                        </div>
			<div class="row">
                     
                        <% } %>

				<div class="col-md-4 product1">
					<img src="images/<c:out value="${detail.getImage()}"></c:out>" class="img-responsive" alt=""/> 
                                        <div class="shop_desc"><a href="ALogin_Controller?action=<c:out value="${detail.getId()}"></c:out>">
                                     </a><h3><a href="ALogin_Controller?action=<c:out value="${detail.getId()}"></c:out>"></a><a href="#"><c:out value="${detail.getCName()}"></c:out></a></h3>
						<p> <c:out value="${detail.getAddress()}"></c:out></p>
						
						<span class="actual"><c:out value="${detail.getRange()}"></c:out></span><br>
						<ul class="buttons">
							<li class="cart"><a href="<c:out value="${detail.getWebsite()}"></c:out>"><c:out value="${detail.getWebsite()}"></c:out></a></li>
							<li class="shop_btn"><a href="ALogin_Controller?action=<c:out value="${detail.getId()}"></c:out>">Read More</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</div>
                                             
                       <%   if(c%k==0)
                       {
                           %>
                       
			</div>	
                            <br>
                            <br>
                            <br>
			
                        
                        <% } 
                            if(c==2)
                              {
                                k=3;
                                c++;
                                }
                              c++;
                           %>

                             
                      


                    </c:forEach>
                    <% if(c%3!=1)
                    {
                        %>  </div>	
                            <br>
                            <br>
                            <br><%
                    }%>
			
                            
			
	     </div>
	   </div>
	  </div>
                    
         <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>
           
 </body>	
</html>