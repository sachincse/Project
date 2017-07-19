<%-- 
    Document   : admin_signup
    Created on : Jun 20, 2017, 1:36:15 AM
    Author     : Sachin Singh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  
  <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
    <script type="text/Javascript" src="js/validation.js"></script>


  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
<link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>

      <link rel="stylesheet" href="form_css/style.css">
      <jsp:include page="home/header.jsp"/> 

  
</head>

<body>
  <div class="container">

    <form class="well form-horizontal" 
          <c:choose>
              <c:when test="${empty admin}">
                  action="Admin_Controller?action=insert"
              </c:when>
              <c:otherwise>
                  action="Admin_Controller?action=update&Id=<c:out value="${admin.getId()}"></c:out>"
              </c:otherwise>
          </c:choose>
           method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend>Connect With Us Today!</legend>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name" placeholder="Name" class="form-control"  type="text" value="<c:out value="${sessionScope.admin.getName()}"></c:out>">
    </div>
  </div>
</div>

<!-- Text input-->



<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        <input name="email" placeholder="E-Mail Address" class="form-control"  type="text" value="<c:out value="${sessionScope.admin.getEmail()}"></c:out>">
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Phone #</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
        <input name="phone" placeholder="+91-857XXXXXX" class="form-control" type="text" value="<c:out value="${sessionScope.admin.getMobile()}"></c:out>">
    </div>
  </div>
</div>


<div class="form-group">
     
  <label class="col-md-4 control-label">Password*</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
   <input type="password" name="password" id="txtNewPassword" placeholder="Password" required="true" onkeyup="checkPasswordMatch();"/>
</div>
</div>
</div>

 

 
<div class="form-group">
  <label class="col-md-4 control-label">Confirm Password*</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <input type="password" name="CPassword" id="txtConfirmPassword" placeholder="Confirm Password" required="true" onkeyup="checkPasswordMatch();"/>
   
</div>
  </div>
  <div class="PasswordAlert" id="divCheckPasswordMatch"> </div>
</div>
  
<!-- Text input-->
       

<div class="form-group">
  <label class="col-md-4 control-label" >Company Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="cname" placeholder="Company Name" class="form-control"  type="text" value="<c:out value="${admin.getCName()}"></c:out>">
    </div>
  </div>
</div>


       <div class="form-group">
  <label class="col-md-4 control-label">Comapany E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        <input name="cemail" placeholder="E-Mail Address" class="form-control"  type="text" value="<c:out value="${admin.getCEmail()}"></c:out>">
    </div>
  </div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label">Company Phone #</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
        <input name="cphone" placeholder="+91-857XXXXXX" class="form-control" type="text" value="<c:out value="${admin.getCMobile()}"></c:out>">
    </div>
  </div>
</div>

<!-- Text input-->
      
<div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
        <input name="address" placeholder="Address" class="form-control" type="text" value="<c:out value="${admin.getAddress()}"></c:out>">
    </div>
  </div>
</div>

<!-- Text input-->
 
<div class="form-group">
  <label class="col-md-4 control-label">City</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
        <input name="city" placeholder="city" class="form-control"  type="text" value="<c:out value="${admin.getCity()}"></c:out>">
    </div>
  </div>
</div>

<!-- Select Basic -->
   
<div class="form-group"> 
  <label class="col-md-4 control-label">State</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="state" class="form-control selectpicker" >
        <option value="<c:out value="${admin.getState()}"></c:out> " >Please select your state</option>
      <option>Andhra Pradesh (Hyderabad)</option>
      <option >Arunachal Pradesh (Itanagar)</option>
      <option >Assam (Dispur)</option>
      <option >Bihar (Patna)</option>
      <option >Chhattisgarh (Raipur)</option>
      <option >Goa (Panaji)</option>
      <option >Gujarat (Gandhinagar)</option>
      <option >Haryana (Chandigarh)</option>
      <option> Himachal Pradesh (Shimla)</option>
      <option >Jammu & Kashmir (Srinagar)</option>
      <option >Jharkhand (Ranchi)</option>
      <option >Karnataka (Bangalore)</option>
      <option >Kerala (Thiruvananthapuram)</option>
      <option >Madhya Pradesh (Bhopal)</option>
      <option >Maharashtra (Mumbai)</option>
      <option> Manipur (Imphal)</option>
      <option >Meghalaya (Shillong)</option>
      <option >Mizoram (Aizawl)</option>
      <option>Nagaland (Kohima)</option>
      <option >Odisha (Bhubaneshwar)</option>
      <option> Punjab (Chandigarh)</option>
      <option >Rajasthan (Jaipur)</option>
      <option >Sikkim (Gangtok)</option>
      <option>Tamil Nadu (Chennai)</option>
      <option>Telangana (Hyderabad)</option>
      <option>Tripura (Agartala)</option>
      <option>Uttarakhand (Dehradun)</option>
      <option>Uttar Pradesh (Lucknow)</option>
      <option>West Bengal (Kolkata)</option>
  
    </select>
  </div>
</div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Zip Code</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
        <input name="zip" placeholder="Zip Code" class="form-control"  type="text" value="<c:out value="${admin.getzip()}"></c:out>">
    </div>
</div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Website or domain name</label>  
   <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
        <input name="website" placeholder="Website or domain name" class="form-control" type="text" value="<c:out value="${admin.getWebsite()}"></c:out>">
    </div>
  </div>
</div>



<!-- Text area -->
  <div class="form-group"> 
  <label class="col-md-4 control-label">Category</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="category" class="form-control selectpicker" >
        <option value="<c:out value="${admin.getCategory()}"></c:out> " >Please select your profession</option>
      <option>Resturants</option>
      <option >Movies</option>
      <option >Car Rent</option>
      <option >House Rent</option>
      <option >Doctor</option>
      <option >Hotel</option>
      <option >Banquet Hall</option>
      <option >Personal Care</option>
       </select>
  </div>
</div>
</div>
      
<div class="form-group">
  <label class="col-md-4 control-label">Project Description</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
    <c:choose>
        <c:when test="${empty admin}">
         <textarea class="form-control" name="p" placeholder="Project Description" ></textarea>
        </c:when>
        <c:otherwise>
          <input type="text" style="font-size:10pt;height:70px;width:300px;"class="form-control" name="p" placeholder="Project Description" value="<c:out value="${admin.getP()}"></c:out>">
        </c:otherwise>
    </c:choose>
       
  </div>
  </div>
</div>






<div class="form-group">
  <label class="col-md-4 control-label">Timing Description</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
         <c:choose>
        <c:when test="${empty admin}">
         <textarea class="form-control" name="t" placeholder="Timing Description" ></textarea>
        </c:when>
        <c:otherwise>
          <input type="text" style="font-size:10pt;height:70px;width:300px;"class="form-control" name="t" placeholder="Timing Description" value="<c:out value="${admin.getT()}"></c:out>">
        </c:otherwise>
    </c:choose>
  </div>
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label">Price Range</label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
         <c:choose>
        <c:when test="${empty admin}">
        <textarea class="form-control" name="rupess" placeholder="Rs.100-Rs.1000"></textarea>
        </c:when>
        <c:otherwise>
          <input type="text" style="font-size:10pt;height:70px;width:300px;"class="form-control" name="rupess" placeholder="Rs.100-Rs.1000" value="<c:out value="${admin.getRange()}"></c:out>">
        </c:otherwise>
    </c:choose>

        	
  </div>
  </div>
</div>

      <div class="form-group"> 
  <label class="col-md-4 control-label">Range</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="filter_range" class="form-control selectpicker" >
        <option value="<c:out value="${admin.getRate()}"></c:out> " >Please select your Range</option>
      <option>Rs.0-Rs.500</option>
      <option >Rs.500-Rs.1000</option>
      <option >Above Rs.1000</option>
      
       </select>
  </div>
</div>
</div> 
      
      

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <button type="submit" class="btn btn-warning" >Summit <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

    <script src="js/index.js"></script>
     <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>

</body>
</html>
