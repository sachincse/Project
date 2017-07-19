
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
                    
                    <c:choose>
                        <c:when test="${sessionScope.user=='user'}">
                             <c:redirect url = "admin_login.jsp"/>
                        </c:when>
                        <c:when test="${empty sessionScope.user}">
                            <c:redirect url = "admin_login.jsp"/>
                        </c:when>
                    </c:choose>
                    
                    
                           <% int c = 1,k=2; %>
                                <c:forEach items="${admins}" var ="admin">
                                    <% if(c%k==1){ %>
                             <div class="desc">
                                 <% if(c==1){
                                     %>&nbsp;
                                     <% } %>
                                  
                        </div>
			<div class="row">
                     
                        <% } %>

				<div class="col-md-4 product1">
					<img src="images/<c:out value="${admin.getImage()}"></c:out>" class="img-responsive" alt=""/> 
                                        <div class="shop_desc"><a href="ALogin_Controller?action=<c:out value="${admin.getId()}"></c:out>">
                                     </a><h3><a href="ALogin_Controller?action=<c:out value="${admin.getId()}"></c:out>"></a><a href="#"><c:out value="${admin.getCName()}"></c:out></a></h3>
						<p> <c:out value="${admin.getAddress()}"></c:out></p>
						
						<span class="actual"><c:out value="${admin.getRange()}"></c:out></span><br>
						<ul class="buttons">
							<li class="cart"><a href="<c:out value="${admin.getWebsite()}"></c:out>"><c:out value="${admin.getWebsite()}"></c:out></a></li>
							<li class="shop_btn"><a href="ALogin_Controller?action=<c:out value="${admin.getId()}"></c:out>">Read More</a></li>
							<div class="clear"> </div>
                                                        


					    </ul>
                                                        
                                                        

				    </div>
                                                        
                                                     
                                                         
                                                           
                                                        
                                                        <button class="btn btn-default" data-toggle="confirmation">Confirmation</button>
                                                        <a class="btn btn-large btn-primary" data-toggle="confirmation" data-title="Open Google?"
                                                            href="Admin_Controller?action=delete&id=<c:out value="${admin.getId()}"></c:out>" target="_blank">Delete</a>
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
			
                            
       
				
			<div class="row">
				<div class="col-md-3 shop_box"><a href="admin_signup.jsp">
					<img src="images/pic9.jpg" class="img-responsive" alt=""/>
					<span class="new-box">
						<span class="new-label">ADD MORE</span>
					</span>
				
				</a></div>
				
			</div>
		 </div>
	   </div>
	  </div>
	 
			 <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>

	
</body>	
</html>