<%-- 
    Document   : review
    Created on : Jul 15, 2017, 11:18:07 AM
    Author     : Sachin Singh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
<jsp:include page="home/header.jsp"/> 
<jsp:include page="home/header_top.jsp"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/main.css" rel="stylesheet">
        
    </head>
    <body>
        <br>
        <br>
        <br>
        
        <c:choose>
            <c:when test="${sessionScope.user=='admin'}">
                  <div class="col-sm-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="dashboard.jsp" data-toggle="tab"><i class="fa fa-reply">&nbsp;&nbsp;</i>Return to Dashboard</a></li>
                                        </ul>
                                    </div>
            </c:when>
            <c:otherwise>
                                   <div class="col-sm-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="ALogin_Controller?action=<%out.println(request.getParameter("id"));%>" data-toggle="tab"><i class="fa fa-reply">&nbsp;&nbsp;</i>Return to Dashboard</a></li>
                                        </ul>
                                    </div>
            </c:otherwise>
            
        </c:choose>

        <br>
        <br>
        <br>
        
        
         <div class="category-tab shop-details-tab"><!--category-tab-->
                                    <div class="col-sm-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="" data-toggle="tab"><i class="fa fa-reply">&nbsp;&nbsp;</i>Reviews</a></li>
                                        </ul>
                                    </div>

           <div class="tab-content">
                                        <div class="tab-pane fade active in" id="reviews" >
                                            <div class="col-sm-12">
                                                <form id="reviewform" action="Review_Controller?id=<%out.println(request.getParameter("id"));%>" method="post">
                                                    <span>
                                                        <input name="rname" type="text" placeholder="Your Name"/>
                                                        <input name="remail" type="email" placeholder="Email Address"/>
                                                    </span>
                                                    <textarea name="review" placeholder="Review"></textarea>
                                                    <b>Rating:
                                                        <fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


                                                    
                                                    <button type="submit"  class="btn btn-default pull-right">
                                                        Submit
                                                    </button>
                                                    <div id="reviewinfo"></div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--/category-tab-->

                                <div class="category-tab shop-details-tab"><!--category-tab-->
                                        <div class="col-sm-12">
                                                <ul class="nav nav-tabs">
                                                    <li class="active"><a data-toggle="tab">
                                                            <i class="fa fa-comment ">&nbsp;&nbsp;</i>Comment Box</a>
                                                    </li>
                                                </ul>
                                      </div>
                                        <div class="tab-content">
                                                <div class="tab-pane fade active in" id="reviews" >
                                                        <div class="col-sm-12">
                                                            <div class="actionBox">
                                                                <ul class="commentList">
                                                                   <c:forEach items="${reviews}" var ="review">
                                                                   
                                                                    <li>
                                                                        <div class="col-sm-4 commenterImage">
                                                                          <img src="images/profile2.png" class="img-rounded"  />
                                                                        </div>
                                                                        <div class="col-sm-8 commentText">
                                                                            <p class=""><c:out value="${review.getMessage()}"></c:out></p> 
                                                                            <span class="date sub-text">From <c:out value="${review.getName()}"></c:out> <c:out value="${review.getEmail()}"></c:out></span><br>
                                                                            <span class="date sub-text">On <c:out value="${review.getTime()}"></c:out></span>
                                                                        </div>
                                                                    </li><br>
                                                                   </c:forEach>
                                                                   <c:choose>
                                                                       <c:when test="${empty review}">
                                                                            <h2 class="remember text-center" style="margin-bottom: 100px">Comments Not Found.</h2>
                                                                       </c:when>
                                                                       <c:otherwise>
                                                                           <br>
                                                                       </c:otherwise>
                                                                   </c:choose>

                                                                   
                                                                </ul>
                                                            </div>
                                                        </div>
                                                </div>

    </body>
</html>
