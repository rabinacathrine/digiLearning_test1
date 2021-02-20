<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="index.jsp" %>
    
    <%
  	  String errorMessage = "";
    	if(session.getAttribute("ERROR")!=null){
    		errorMessage = (String) session.getAttribute("ERROR");
    	}
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/registration.css"> 
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

  <div id="page-content-wrapper">
        <div class="page-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                    
  
  
                       
   
	
	
	
	
	
	<!--     <form action="RegisterController" method="post">
		<div class="container">
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>

			<label for="name"><b>Name</b></label> 
				<input type="text" placeholder="Enter Name" name="name" id="name" required><br>
			<label for="username"><b>Username</b></label> 
				<input type="text" placeholder="Enter Username" name="username" id="username" required><br>
			<label for="email"><b>Email</b></label>
				<input type="text" placeholder="Enter Email" name="email" id="email" required><br>
			<label for="psw"><b>Password</b></label> 
				<input type="password" placeholder="Enter Password" name="password" id="password" required><br>
			<label for="psw-repeat"><b>Repeat Password</b></label> 
				 <input type="password" placeholder="Repeat Password" name="password-repeat"
				id="password-repeat" required>
			<hr>

			
			<button type="submit" class="registerbtn">Register</button>
		</div>

		<div class="container signin">
			<p>
				Already have an account? <a href="#">Sign in</a>.
			</p>
		</div>
	</form> -->
	
	
	
	
	<!--  -->
	
	 <div class="frame">

        <!-- Login/signup box -->
        <div class="box">
            <input type="checkbox" name="" class="toggle-btn">
        
            <!-- Sign Up -->
            <div class="signup">
                <form action="RegisterController" method="post">
                <div class="input-group">
                    <span>Name</span><br>
                    <input type="text" placeholder="enter your full name" name="name" id="name" required class="inp">
                </div>
                <div class="input-group">
                    <span>Email</span><br>
                    <input type="email" placeholder="e.g abc@xyx.com" name="email" id="email" required class="inp">
                </div>
                <div class="input-group">
                    <span>Username</span><br>
                    <input type="text" placeholder="e.g abc123" name="username" id="username" required class="inp">
                </div>
                <div class="input-group">
                    <span>Password</span><br>
                    <input type="password" placeholder="********" name="password" id="password" required class="inp">
                </div>
                <div class="input-group">
                    <span>Confirm Password</span><br>
                    <input type="password" placeholder="********"  name="password-repeat"
				id="password-repeat" required class="inp">
                </div>
                <div class="input-group" style="margin-top: 20px;">
                    <input type="submit" value="SIGN UP" class="registerbtn" class="inp submit-inp">
                </div>
                
                
             
                
                <div class="alert alert-danger" role="alert">
  					<%= errorMessage %>
				</div>
                
             
                
                
                </form>
            </div>
        
            <!-- Login -->
            <div class="login">
                <form action="LoginController" method="get">
                <div class="input-group">
                    <span>Username</span><br>
                    <input type="text" placeholder="e.g abc123" class="inp">
                </div>      
                <div class="input-group">
                    <span>Password</span><br>
                    <input type="password" placeholder="********" class="inp">
                </div>
                <div class="input-group" style="margin-top: 20px;">
                    <input type="submit" value="SIGN IN" class="inp submit-inp">
                </div>
                
                 <% if(errorMessage != ""){ %>
                
                <div class="alert alert-danger" role="alert">
  					<%= errorMessage %>
				</div>
                
              <% } %>
                
            </form>
            </div>
        </div>


        <!-- Product -->
        <!--  <div class="product" style="display: flex; align-items: center ;">
            
                <h1>DIGI-LEARN</h1>
            <h3>LEARN WHAT YOU ALWAYS WANTED TO</h3>
            <br>
            <div class="points" style="text-align: left; padding-left: 18%;">
                
                    <li>FREE LEARNING</li>
                    <li>LEARN FROM ANYWHERE</li>
                    <li>LEARN AT YOUR OWN PACE</li>
                    <li>CUSTOMIZED LEARNING PLATFORM</li>     
            </div>
            
                      
        </div> -->
       
    </div>
	
	
	
	
	
	
	
                    </div>
                   
                </div>
            </div>
        </div>
    </div>



</body>
</html>