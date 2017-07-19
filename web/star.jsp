<%-- 
    Document   : star
    Created on : Jul 18, 2017, 7:15:10 PM
    Author     : Sachin Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <jsp:include page="home/header.jsp"/> 
        <jsp:include page="home/header_top.jsp"/>
        
    </head>
    <body>
          
<fieldset class="rating">
    <input type="radio" id="star5" disabled="disabled" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" disabled="disabled" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" disabled="disabled" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" disabled="disabled" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" disabled="disabled" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" disabled="disabled" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" disabled="disabled" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" disabled="disabled" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" disabled="disabled" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" disabled="disabled" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset>
        
        
  
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  
  
  
  
  
  
  
  <c:if test="${5 lt 6}">
    	   count is less than 6<br />
	</c:if>
	
	
	<!-- you can check "greater than(>)"  -->
	<c:if test="${count gt 4}">
    	   count is greater than 4<br />
	</c:if>
	
	<!-- you can check "less than or equals(<=)"  -->
	<c:if test="${count le 5}">
	   count is less than or equal to 5.<br />
	</c:if>
	
	<!-- you can check "greater than or equals(>=)" -->
	<c:if test="${count ge 5}">
	   count is greater than or equal to 5.<br />
	</c:if>
  
  
  
  
  
  
  
  
  
  
  
    </body>
</html>
