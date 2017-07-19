<%-- 
    Document   : gallery
    Created on : Jul 6, 2017, 11:53:42 PM
    Author     : Anu Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
				<h3 class="m_2">Image for Gallary</h3>
                    </div>
                    <form action="Image_Controller?action=gallery&id=<c:out value='${admin.getId()}'></c:out>" method="post" enctype="multipart/form-data">
                         <input type="file" required="true" name="file" multiple /><br>
                         <input type="submit" value="Submit">
                      </form>
                    <br>
                     <h4>

                        
                    </h4> 
                       <br>
                       
                       <div class="clear"> </div>
                       
                        <% int i = 1;%>
                    <c:choose>
                        <c:when test="${empty sessionScope.g_images}">
                            
                        </c:when>
                        <c:otherwise>
                           
                            <c:forEach items="${g_images}" var = "image">
                                
                           <% if(i%3==1)
                            { %>
                            <div class="row ex_box">
                                <% } %>
			
				
				<div class="col-md-4 team1">
				<div class="img_section magnifier2">
                                    <a class="fancybox" href="images/<c:out value="${image}"></c:out>" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="images/<c:out value="${image}"></c:out>" class="img-responsive" alt=""><span> </span>
					<div class="img_section_txt">
                                                <a href="Image_Controller?action=delete&type=gallery&id=<c:out value="${sessionScope.admin.getId()}"></c:out>&name=<c:out value="${image}"></c:out>">
						Delete
					</div>
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
          
               <a href="ALogin_Controller?action=<c:out value="${admin.getId()}"></c:out>">next</a>
                        <br>
          
          
	   <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>
</body>	
</html>
