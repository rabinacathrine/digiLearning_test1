<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
                    
                    
                    
                    
                    
                    <form action="" method="post">
                    
                    <h3>Upload A Video</h3>
                    
                    	<div class="input-group">
                   			 <span>Title</span><br>
                  			 <input type="text" placeholder="Give a title for your video " name="title" id="title" required class="inp">
              		   </div>
              		   <div class="input-group">
                   			 <span>Description</span><br>
                  			 <input type="text" placeholder="Add a description " name="title" id="title" required class="inp">
              		   </div>
                    
                    <div>
                    <span>Upload Video</span><br>
                    <input type="file" name="video" >
                    </div>
                    
                    </form>
                    
                    
                    
                    
                    
                    
                     </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>