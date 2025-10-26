<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.DoctorDao"%>
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
<title>Insert title here</title>
<!-- the  ../ is used so we can come out of the admin folder we are in right now   -->
<%@include file="../component/allcss.jsp" %>

<style type="text/css">

.paint-card{

box-shadow: 0 0 10px 0 rgba(0 , 0 , 0 , 0.3);

color: #1bd1bf;

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

<%@include file="navbar.jsp" %>
<div class="container p-3">
	<% 
	//if user is not logged in as admin or the session has expired and the admin object is eampty then we will be sent back to admin login page
	%>
	<c:if test="${ empty adminObj} }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>


	<%
	DoctorDao dao = new DoctorDao(DbConnect.getConn());
	
	
	
	
	%>

	<p class="text-center fs-1 fw-bold">ADMIN DASHBOARD</p>
	
		<c:if test="${not empty errorMsg}">
			<p class="fs-3 text-center text-danger">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<c:if test="${not empty succMsg}">
			<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>
		
		<%
		//DoctorDao dao = new DoctorDao(DBConnect.getConn());
		%>
		
		
	<div class="row">
		
			<div class="row p-2">
				
				<div class="col-md-6 p-2">
					<div class="card paint-card ">
						<div class="card-body text-center ">
							<i class="fa-solid fa-user-doctor fa-5x"></i><br>
							<p class="fs-3 fw-bold text-center">DOCTORS</p>
								<p class="fs-3 fw-bold text-center" ><%= dao.countDoctor() %> </p>
							</div>		
					</div>
				</div>
								
				<div class="col-md-6 p-2">
					<div class="card paint-card">
						<div class="card-body text-center">
						<i class="fa-solid fa-hospital-user fa-5x"></i><br>
							<p class="fs-3 fw-bold text-center">USERS</p>
								<p class="fs-3 fw-bold text-center"><%= dao.countUSer() %> </p>
							</div>		
					</div>
				</div>
						
				<div class="col-md-6 mt-4 p-2">
					<div class="card paint-card">
						<div class="card-body text-center">
						<i class="fa-solid fa-calendar-check fa-5x" ></i><br>
							<p class="fs-3 fw-bold text-center">TOTAL APPOINTMENTS</p>
								<p class="fs-3 fw-bold text-center"><%= dao.countAppointment() %> </p>
							</div>		
					</div>
				</div>
								
				<div class="col-md-6 mt-4 p-2">
					
					<div data-bs-toggle="modal" data-bs-target="#exampleModal"   class="card paint-card">
						<div class="card-body text-center">
							<i class="fa-solid fa-user-tie fa-5x"></i><br>
							<p class="fs-3 fw-bold text-center">SPECIALISATIONS</p>
								<p class="fs-3 fw-bold text-center"><%= dao.countSpecialist() %> </p>
							</div>		
					</div>
				</div>
			</div>
		
		
	</div>
	
	
</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				 
				<div class="modal-body">
					<!-- This form will trigger the add specialist trigger -->
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialization Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add Specialization</button>
						</div>

					</form>

				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			
			</div>
		</div>
	</div>

			



</body>
</html>