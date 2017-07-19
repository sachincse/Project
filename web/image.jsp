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
                    <div class="row ex_box">
				<h3 class="m_2">Image for banner</h3>
                    </div>
                    <form action="Image_Controller?action=banner&id=<c:out value='${admin.getId()}'></c:out>" method="post" enctype="multipart/form-data">
                         <input type="file" required="true" name="file" multiple /><br>
                         <input type="submit" value="Submit">
                      </form>
                    <br>
                     <h4>
                        <a href="gallery.jsp">next</a>
                        <br>
                        
                    </h4> 
                       <br>
                       <div class="clear"> </div>
                       
                        <% int i = 1;%>
                    <c:choose>
                        <c:when test="${empty images}">
                            
                        </c:when>
                        <c:otherwise>
                           
                            <c:forEach items="${images}" var = "image">
                                
                           <% if(i%3==1)
                            { %>
                            <div class="row ex_box">
                                <% } %>
			
				
				<div class="col-md-4 team1">
				<div class="img_section magnifier2">
                                    <a class="fancybox" href="images/<c:out value="${image}"></c:out>" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/<c:out value="${image}"></c:out>" class="img-responsive" alt=""><span> </span>
                                                
                                        <div class="img_section_txt">
                                                <a href="Image_Controller?action=delete&type=banner&id=<c:out value='${admin.getId()}'></c:out>&name=<c:out value="${image}"></c:out>">
                                        Delete
                                        </a>
						
					</div>
                                        </a>

                                              
				
				</a></div>
				</div>
                                    <%
                                        if(i%3==0)
                                        {
                                            %>
                                            </div>
                                      <%  } i++;%>


                            </c:forEach>
                            <% if(i%3!=0)
                            {%>
                              </div>
                              <% } %>
                            
                    </c:otherwise>
                    </c:choose>
		   	
                    <div class="clear"> </div>
                    
		 </div>
	   </div>
	  </div>
	   <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>
</body>	
</html>