

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/home.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>


	
<div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
			
    	<!-- <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        			<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
    			</button> -->		
    			
    		 <div style="display: flex; align-items: center; justify-content: space-between;"> 
    	
    			   <div  class="navbar-brand">
                    <a id="menu-toggle" href="#" class="glyphicon glyphicon-align-justify btn-menu toggle">
                        <i class="fa fa-bars"></i>
                    </a>
    				<a href="home.jsp">DIGI-LEARN</a>
            	    </div>
                
               <!--   <div  class="navbar-brand">
                    <a id="menu-toggle" href="#" class="glyphicon glyphicon-align-justify btn-menu toggle">
                        <i class="fa fa-bars"></i>
                    </a>
    				<a href="#">DIGI-LEARN</a>
                </div>-->
                
                 <!-- Searchbar -->
       				<div class="searchBar">
         			<input type="text" placeholder="Search For Any Thing">          
        				     <span>
           					   <!--    <mdbIcon icon="search"/> -->
           					  </span>
       				</div>

      			  <!-- Join as creator -->
       				

      			  <!-- Profile -->
       				<div> <a href="registration_form.jsp"><span class="fa fa-home solo">PROFILE</span></a></div>
				</div>
             </div>
		<!--	<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>/.nav-collapse -->
		</div>
	</nav>
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <nav id="spy">
            <ul class="sidebar-nav nav">
                <li class="sidebar-brand">
                    <a href="home.jsp"><span class="fa fa-home solo">HOME</span></a>
                </li>
                <li class="sidebar-brand">                   
                <!--    <form action="subscription" method="post">
                 	  <input type="submit" value="SUBSCRIPTIONS">
                    </form> -->
                    <a href="subscription.jsp"><span class="fa fa-home solo">SUBSCRIPTIONS</span></a>
                </li>
                 <li class="sidebar-brand">
                     <a href="playlist.jsp"><span class="fa fa-home solo">PLAYLIST</span></a>
                </li>
                <li class="sidebar-brand">
                     <a href="downloads.jsp"><span class="fa fa-home solo">DOWNLOADS</span></a>
                </li>
                <li class="sidebar-brand">
                     <a href="history.jsp"><span class="fa fa-home solo">HISTORY</span></a>
                </li>
               
            </ul>
           
        </nav>
    </div>
 </div>
    <!-- Page content -->
 

<script type="text/javascript">
/*Menu-toggle*/
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("active");
    
});
</script>
</body>
</html>