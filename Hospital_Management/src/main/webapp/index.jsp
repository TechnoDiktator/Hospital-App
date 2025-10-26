<%@page import="com.db.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
<!-- THESE TWO LINES ARE NECESSARY TO RUN JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored = "false"%> 
<!-- ----------------------------------------- -->     
     
      


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital App</title>
<%@include file="component/allcss.jsp" %>

<style type="text/css">

.paint-card{

box-shadow: 0 0 10px 0 rgba(0 , 0 , 0 , 0.3);

}
.footerstyle{
  position:relative;
   bottom:0;
   width:100%;
   height:30px;   /* Height of the footer */
   background:#6cf;

}
.backgroundimg{

	background:  #ddedeb;

}


</style>


</head>
<body class="backgroundimg">
<%@include file="component/navbar.jsp" %>


<% 	//TESTING DB CONNECTION 
	//Connection con = DbConnect.getConn();
	//out.print(con);
%>


<!---------------------------------------------------------- CARAOUSEL ------------------------------------------------------------------------------------->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/hos1.webp" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/hos2.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/hos3.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/hos4.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/doc1.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/doc2.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/doc3.webp" class="d-block w-100" alt="..." height="600px">
    </div>    
    <div class="carousel-item">
      <img src="image/doc4.jpg" class="d-block w-100" alt="..." height="600px">
    </div>

    <div class="carousel-item">
      <img src="image/pop2.png" class="d-block w-100" alt="..." height="600px">
    </div>    
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------->




<div class="container p-3">

	<p class="text-center fs-1 fw-bold">Our Values</p>
	
	
	<div class="row">
		<div class="col-md-6 p-2">
			<div class="row">
				
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-5 fw-bold">Safety</p>
								<p>Rated highest in country - 5 star AISCH GOVI  </p>
							</div>		
					</div>
				</div>
								
				<div class="col-md-6">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-5 fw-bold">Cleanliness</p>
								<p>Cleanliness standards as per International Guidelines </p>
							</div>		
					</div>
				</div>
						
				<div class="col-md-6 mt-2">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-5 fw-bold">Professionalism</p>
								<p>Nationally and Internationally acclaimed professional team </p>
							</div>		
					</div>
				</div>
								
				<div class="col-md-6 mt-2">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-5 fw-bold">Research and Academics</p>
								<p>State of the art research and academics wing  </p>
							</div>		
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 p-2">
				<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    
				    <div class="carousel-item active">
				      <img src="image/c1.jpg" class="d-block w-100" height="300px" alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="image/c2.jpg" class="d-block w-100" height="300px alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="image/c3.webp" class="d-block w-100" height="300px alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="image/c4.jpg" class="d-block w-100" height="300px alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="image/c5.png" class="d-block w-100" height="300px alt="...">
				    </div>
				    
				  </div>
				</div> 
			</div>
			
	</div>


</div>

<hr>
<div class="container p-2">
 <p class="text-center fs-2 fw-bold"> Our Core Management Team</p>
	<div class="row">
		<div class="col-md-3">
			<div class="card paint-card" style="width: 18rem;">
			  <img src="image/prof1.jpg" width="500" height="250" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Dr. Pratik Shah</h5>
			    <p class="card-text">Consultant - Vitreoretina, Uvea, Eye trauma and Comprehensive Ophthalmolog</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">Sr. Consultant Multi Dis.</li>
			    <li class="list-group-item">Department - ACCIDENt, EG CARE
			    </li>
			  </ul>
			</div>
		</div>
		
		<div class="col-md-3">
			<div class="card paint-card" style="width: 18rem;">
			  <img src="image/prof2.jpg" width="500" height="250" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Dr. Phinsuk Wangadu</h5>
			    <p class="card-text">Consultant - Vitreoretina, Uvea, Eye trauma and Comprehensive Ophthalmolog</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">Sr. Consultant Rare Diseases</li>
			    <li class="list-group-item">Department - Rare Diseases</li>
			  </ul>
			</div>
		</div>

		<div class="col-md-3">
			<div class="card paint-card" style="width: 18rem;">
			  <img src="image/prof3.jpg" width="500" height="250" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Dr. Alok Ranjan</h5>
			    <p class="card-text">Consultant - Vitreoretina, Uvea, Eye trauma and Comprehensive Ophthalmolog</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">Sr. Consultant - Interv. Cardiology</li>
			    <li class="list-group-item">Department - CARDIOLOGY</li>
			  </ul>
			</div>
		</div>

		<div class="col-md-3">
			<div class="card paint-card" style="width: 18rem;">
			  <img src="image/prof4.png" width="500" height="250"  class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">Dr. Hina Faldu </h5>
			    <p class="card-text">Consultant - Vitreoretina, Uvea, Eye trauma and Comprehensive Ophthalmolog</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">Sr. Consultant Neurologist</li>
			    <li class="list-group-item">Department - NEUROSCIENCE</li>
			  </ul>
			</div>
		</div>
		
		

	</div>
</div>




<br>
<br>
<br>
<br>
<br>
<br>





<%@ include file="component/footer.jsp" %>

</body>
</html>