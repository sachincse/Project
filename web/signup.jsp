
<!DOCTYPE HTML>
<html>
<head>
    <script type="text/Javascript" src="js/validation.js"></script>
       <jsp:include page="home/header.jsp"/> 
</head>
<body>
	
     <div class="main">
      <div class="shop_top">
	     <div class="container">
                 <form method="post" action="SignUpController"> 
								<div class="register-top-grid">
									
										<div>
											<span>Name<label>*</label></span>
                                                                                        <input type="text" name="name" required="true" placeholder="Name"> 
										</div>
										<div>
											<span>Phone<label></label></span>
                                                                                        <input type="text" name="phone" placeholder="+91-857XXXXXXX"> 
										</div>
										<div>
											<span>Email Address<label>*</label></span>
                                                                                        <input type="text" name="email" id="txtEmail" required="true" onkeyup="checkEmail();" placeholder="sachincs95@gmail.com"/> 
                                                                                         <div class="EmailAlert" id="divCheckEmail"> </div>
                                                                                         <div id="mydiv"></div>
										</div>
                                                                    
                                                                                <div>
											<span>Security Question<label>*</label></span>
                                                                                        <input type="text" name="question" required="true" placeholder="Type your Own Question!"> 
										</div>
                                                                    
                                                                                <div>
											<span>Security Answer<label>*</label></span>
                                                                                        <input type="text" name="answer" required="true" placeholder = "Answer"> 
										</div>
										
								</div>
								<div class="clear"> </div>
								<div class="register-bottom-grid">
									
                                                                    <div >
											<span>Password<label>*</label></span>
                                                                                        <input type="password" name="password" id="txtNewPassword" required="true" onkeyup="checkPasswordMatch();"/>
										</div>
                                                                    <div >
											<span>Confirm Password<label>*</label></span>
                                                                                        <input type="password" id="txtConfirmPassword" required="true" onkeyup="checkPasswordMatch();"/>
										</div>
                                                                    <div class="PasswordAlert" id="divCheckPasswordMatch"> </div>

										<div class="clear"> </div>
								</div>
								<div class="clear"> </div>
								<input type="submit" value="submit" id="mySubmit">
						</form>
					</div>
		   </div>
	  </div>
	 <div>
                <jsp:include page="home/footer.jsp"/> 
            </div>
</body>	
</html>