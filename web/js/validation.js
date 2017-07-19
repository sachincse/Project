function checkPasswordMatch() {
    var password = $("#txtNewPassword").val();
    var confirmPassword = $("#txtConfirmPassword").val();

    if (password != confirmPassword){
        $("#divCheckPasswordMatch").html("Passwords do not match!");
        document.getElementById("mySubmit").disabled = true;
    }
    else{
        $("#divCheckPasswordMatch").html("Passwords match.");
        document.getElementById("mySubmit").disabled = false;
    }
}

$(document).ready(function () {
   $("#txtNewPassword, #txtConfirmPassword").keyup(checkPasswordMatch);
});


function checkEmail()  
{  
var value = $("#txtEmail").val();
 var atpos = value.indexOf("@");
 var dotpos = value.lastIndexOf(".");

if(atpos<1 || dotpos<atpos+2 || dotpos+2>=value.length)  
{

   $("#divCheckEmail").html("Invalid Email!"); 
   document.getElementById("mySubmit").disabled = true;
}
 else
 {
     xmlHttp=GetXmlHttpObject()
var url="checkajax.jsp";
url=url+"?email="+value;
xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)

}
function stateChanged(){ 
if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
var showdata = xmlHttp.responseText; 
var str1 = "Email-ID already exists!";
var str2 = "You can register now!!!!";
var n1 = showdata.localeCompare(str1);
var n2 = showdata.localeCompare(str2);
if(n1===0)
{
   
    document.getElementById("mySubmit").disabled = true;
}
if(n2===0)
{
    document.getElementById("mySubmit").disabled = false;
}
document.getElementById("divCheckEmail").innerHTML= showdata;
} 
}
function GetXmlHttpObject(){
var xmlHttp=null;
try{
xmlHttp=new XMLHttpRequest();
}
catch (e) {
try {
xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
}
catch (e){
xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
}
}
return xmlHttp;

 } 
 
}

$(document).ready(function () {
   $("#txtEmail").keyup(checkEmail);
});