<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">
  
body{
  background-image: url(http://www.joburgchiropractor.co.za/images/background.jpg);
}







</style>


 <script>
 
  var userType="Employee";
  var state="signup";
  
  
  function flowControl(){
	  
	  if(userType==="Employee"){
		  if(state==="signup"){
			  
			  employeeSignUp();
		  }
		  else{
			  
			  employeeSignIn();
		  }
	  }
	  else if(userType==="Customer"){
		  if(state==="signup"){
			  
			  customerSignUp();
		  }
		  else{
			  
			  customerSignIn();
		  }
	  }
	  
  }
  
  function selectedUser(x){
	  
	  console.log(x.getElementsByTagName("a")[0].text);
	  
	  userType=x.getElementsByTagName("a")[0].text;
	  
  }
  
  
 function customerSignUp(){
	  
	  
	  
	  var eid =document.getElementsByClassName("form-control")[5].value;
	  var pass =document.getElementsByClassName("form-control")[6].value;
	  var name =document.getElementsByClassName("form-control")[7].value;
	  
	  var street=document.getElementsByClassName("form-control")[8].value;
	  
	  var city =document.getElementsByClassName("form-control")[9].value;
	  
	  
	  alert(eid+name+pass+street+city);
	  
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	         // Typical action to be performed when the document is ready:
	    	  var r = xhttp.responseText.replace(/[|&;$%@"<>()+, ]/g, "");
		         console.log(r);
		         alert(r);
		         
		         if(r.includes("true") ){
		        	 alert(r);
		        	 window.location.href = 'home.jsp'
		         }
		         else{
		        	 
		        	 alert("something is wrong"+r);
		         }
	         
	      }
	  };
	  xhttp.open("POST", "superController.jsp?state=customerSignUp&eid="+eid+"&pass="+pass+"&name="+name+"&street="+street+"&city="+city, true);
	  xhttp.send();
	  
  }
    
  function employeeSignUp(){
	  
	  
	  var eid =document.getElementsByClassName("form-control")[0].value;
	  var name =document.getElementsByClassName("form-control")[1].value;
	  var pass =document.getElementsByClassName("form-control")[2].value;
	  
	  var bn=document.getElementsByClassName("form-control")[3].value;
	  
	  var salary =document.getElementsByClassName("form-control")[4].value;
	  
	  
	  alert(eid+name+pass+bn+salary);
	  
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	         // Typical action to be performed when the document is ready:
	    	  var r = xhttp.responseText.replace(/[|&;$%@"<>()+, ]/g, "");
		         //console.log(r=='true ');
		         
		         if(r.includes("true") ){
		        	 //alert(r);
		        	 window.location.href = 'home.jsp'
		         }
		         else{
		        	 
		        	 alert("something is wrong"+r);
		         }
	         
	      }
	  };
	  xhttp.open("POST", "superController.jsp?state=employeeSignUp&eid="+eid+"&name="+name+"&pass="+pass+"&bn="+bn+"&salary="+salary, true);
	  xhttp.send();
	  
  }
 
  
function customerSignIn(){
	  
	  
	  var eid =document.getElementsByClassName("form-control")[2].value;
	 
	  var pass =document.getElementsByClassName("form-control")[3].value;
	  
	
	  
	  
	  //alert(eid+pass);
	  
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	         // Typical action to be performed when the document is ready:
	         var r = xhttp.responseText.replace(/[|&;$%@"<>()+, ]/g, "");
	         //console.log(r=='true ');
	         
	         if(r.includes("true") ){
	        	 //alert(r);
	        	 window.location.href = 'home.jsp'
	         }
	         else{
	        	 
	        	 alert("something is wrong"+r);
	         }
	      
	      
	      }
	  };
	  xhttp.open("POST", "superController.jsp?state=customerSignIn&eid="+eid+"&pass="+pass, true);
	  xhttp.send();
	  
  }
  
function employeeSignIn(){
	  
	  
	  var eid =document.getElementsByClassName("form-control")[0].value;
	 
	  var pass =document.getElementsByClassName("form-control")[1].value;
	  
	
	  
	  
	  //alert(eid+pass);
	  
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	         // Typical action to be performed when the document is ready:
	         var r = xhttp.responseText.replace(/[|&;$%@"<>()+, ]/g, "");
	         //console.log(r=='true ');
	         
	         if(r.includes("true") ){
	        	 //alert(r);
	        	 window.location.href = 'home.jsp'
	         }
	         else{
	        	 
	        	 alert("something is wrong"+r);
	         }
	      
	      
	      }
	  };
	  xhttp.open("POST", "superController.jsp?state=employeeSignIn&eid="+eid+"&pass="+pass, true);
	  xhttp.send();
	  
  }
  
  </script>

</head>
<body>

<!-- if you want to create login page and register page together in one page ...you have to only chnage his name...that's it...                 -->
<div class="container" style="margin-top: 5%;">
  <div class="row">
    <div class="col-sm-4"> </div>
<div class="col-md-4">
  
<h1 class="text-center text-success"> Register page</h1>
<br/>

<div class="col-sm-12">

  <ul class="nav nav-pills" >



    <li class="" onclick="selectedUser(this)" style="width:50%"><a class="btn btn-lg btn-default" data-toggle="tab" href="#home">Employee</a></li>
   
    <li class=" " onclick="selectedUser(this)" style="width:48%"><a class=" btn btn-lg btn-default" data-toggle="tab" href="#menu1">Customer</a></li>



  </ul>

<br/>


  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      
<form action="#">

  <div class="form-group">
    <label for="UserName">Employee ID</label>
    <input type="text" class="form-control" id="email">
  </div>
  
  <div class="form-group">
    <label for="email">Employee Name:</label>
    <input type="email" class="form-control" id="email">
  </div>

  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" >
  </div>

  <div class="form-group">
    <label for="pwd">Branch:</label>
    <input type="text" class="form-control" >
  </div>
  
  
  <div class="form-group">
    <label for="pwd">Salary:</label>
    <input type="number" class="form-control" >
  </div>



  <a type="submit" class="btn btn-default btn-lg" 
    onclick="flowControl()" >
   Submit



  </a>
  
  
 
  
  <!-- <button type="submit" class=" pull-right btn-link"><a href="www.google.com">Forget password</a></button> -->

</form>
<br/>
<a href="#" onclick="changeUiToSignIn()" class="pull-right btn btn-block btn-danger" > Already Registered ?   </a>



    </div>

    <div id="menu1" class="tab-pane fade">

<form action="#">

  <div class="form-group">
    <label for="UserName">User ID</label>
    <input type="text" class="form-control" id="email">
  </div>
  
  <div class="form-group">
    <label for="email">Password:</label>
    <input type="password" class="form-control" id="email">
  </div>

  <div class="form-group">
    <label for="pwd">Name:</label>
    <input type="text" class="form-control" >
  </div>

  <div class="form-group">
    <label for="pwd">Street:</label>
    <input type="text" class="form-control" >
  </div>
  
  
  <div class="form-group">
    <label for="pwd">City:</label>
    <input type="text" class="form-control" >
  </div>



  <a type="submit" onclick="flowControl()" class="btn btn-default" >Submit

  
  </a>

  <!-- <button type="submit" class=" pull-right btn-link"><a href="www.google.com">Forget password</a></button> -->

</form>
<br/>
<a href="#" class="pull-right btn btn-block btn-success" onclick="changeUiToSignIn()" > Already Registered ?   </a>

<script type="text/javascript">
  
function changeUiToSignIn(){


 // alert("test");


  if(document.getElementsByClassName("pull-right btn btn-block btn-danger")[0].innerHTML.includes("Not") || document.getElementsByClassName("pull-right btn btn-block btn-success")[0].innerHTML.includes("Not") ){

    location.reload();
    
    state= "signup";

  }else{
	  
	  state= "login";

  var header = document.getElementsByTagName("h1")[0];

  header.innerHTML= "Sign In";

  var names =document.getElementsByClassName("form-group")[1];
  names.innerHTML= "";

  var names =document.getElementsByClassName("form-group")[3];
  names.innerHTML= "";

  var names =document.getElementsByClassName("form-group")[4];
  names.innerHTML= "";
  
  
  var names =document.getElementsByClassName("form-group")[7];
  names.innerHTML= "";
  var names =document.getElementsByClassName("form-group")[8];
  names.innerHTML= "";
  var names =document.getElementsByClassName("form-group")[9];
  names.innerHTML= "";


 


  document.getElementsByClassName("pull-right btn btn-block btn-danger")[0].innerHTML="Not Registered ?";


  document.getElementsByClassName("pull-right btn btn-block btn-success")[0].innerHTML="Not Registered ?"




}


  //alert(header);
}


</script>

    



    </div>
   </div>
  </div>
</div>
</div>
<!-- This design is created by manoj chauhan  -->
</body>
</html>