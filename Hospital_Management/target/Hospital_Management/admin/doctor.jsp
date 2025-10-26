<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!-- THESE TWO LINES ARE NECESSARY TO RUN JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@page isELIgnored = "false"%> 
<!-- ----------------------------------------- -->     
     
    
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.SpecialistDao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN PORTAL FOR DOCTORS</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}


.backgroundimg{

	background:  #ddedeb;

}


.footerstyle{
  position:relative;
   bottom:0;
   width:100%;
   height:30px;   /* Height of the footer */
   background:#6cf;

}


</style>
</head>
<body class="backgroundimg">
	<!-- HERE WE ARE  -->
	
	
	<%@include file="navbar.jsp"%>
	
	
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-3 ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" class="form-control">
							</div>
							
							
							<div class="mb-3">
								<label class="form-label">Specialization</label> <select name="spec"
									required class="form-control">
									<option>--select--</option>
									
									<!-- HERE WE ARE GETTING THE LIST OF ALL THE SPECIALISTS FROM SPECIALIST DAo -->
									<%
									SpecialistDao dao = new SpecialistDao(DbConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							
							
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div >
							
							<div class="text-center"><button type="submit" class="btn btn-primary text-center">Submit</button></div>
							
						</form>
					</div>
				</div>
			</div>
		
			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body"></div>
					<p class="fs-2 text-center " >Doctor Details</p>
					<table class="table table-success table-striped p-2">
  						<thead>
  							<tr>
  								<th scope="col">Full Name</th>	
  								<th scope="col">DOB</th>
  								<th scope="col">Qualification</th>
  								<th scope="col">Specilization/s</th>
  								<th scope="col">Email</th>
  								<th scope="col">Mob no</th>
  								<th scope="col">Action</th>
  								
  							</tr>
  						</thead>
  						
  						<tbody>
  							<%
  								DoctorDao dao2 = new DoctorDao(DbConnect.getConn());  								
 								 List<Doctor> listofdocs  =  dao2.getAllDoctor();
 								 for(Doctor d:listofdocs){
 							%>
 									 <tr>
 									 	<td><%= d.getFullName() %></td>
 									 	<td><%= d.getDob() %></td>
 									 	<td><%= d.getQualification() %></td>
 									 	<td><%= d.getSpecialist() %></td>
 									 	<td><%= d.getEmail() %></td>
 									 	<td><%= d.getMobNo() %></td>
 									 	<td>
 									 		<a class=" btn btn-sm btn-primary mb-2" href="editdoctor.jsp?id=<%=d.getId()%>">Edit</a>
 									 		<a class=" btn btn-sm btn-danger mb-2" href="">Delete</a>
 									 	</td>
 									 	
 									 </tr>
 							<% 	 
 									
 								 }
 								 
  							%>
  						
  						
  							</tbody>
  						
						</table>
		
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





<%@ include file="../component/footer.jsp" %>
	
	
</body>
</html>