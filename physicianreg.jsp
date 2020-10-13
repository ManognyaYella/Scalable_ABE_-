<%@include file="header.jsp"%>
<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Registerd Successfully')</script>");
}
if(request.getParameter("msg2")!=null){
	  out.println("<script>alert('User Id already Available')</script>");
}

%>
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub">Easy to Register</h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">Physician Register</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" action="physicianreg2.jsp" method="post" id="demoForm">
					
					<div class="form-group">
						<label>Name</label>
						<input type="text"  pattern="[A-Za-z]+" class="form-control" name="nm" placeholder="" required="">
					</div>
					<div class="form-group">
						<label>User ID</label>
						<input type="text" class="form-control" name="unm" placeholder="" required="">
					</div>
						<div class="form-group">
						<label class="mb-2">Password</label>
						<input type="password" class="form-control" name="pwd"  placeholder="" required="">
					</div>

					<div class="form-group">
					   <label>Hospital</label>
					<select  class="form-control"  name="hosp" style="width: 500px ">
	          
							<option value="">Select Hospital</option>
                            <option value="Hosp1">Hosp1</option>
							<option value="Hosp2">Hosp2</option>
							<option value="Hosp3">Hosp3</option>
					   </select>	
					   </div>
					<div class="form-group">
					   <label>Profession</label>
					<select  class="form-control"  name="prof" style="width: 500px ">
	          
							<option value="">Select Profession</option>
 
								<option value="Audiologist">Audiologist
								<option value="Cardiologist">Cardiologist
							<option value="Dentist">Dentist
								<option value="Dermatologist">Dermatologist
								<option value="Epidemiologist">Epidemiologist
								<option value="Gynecologist">Gynecologist
								<option value="Immunologist">Immunologist
								<option value="Microbiologist">Microbiologist
								<option value="Neonatologist">Neonatologist
								<option value="Neurologist">Neurologist
								<option value="Neurosurgeon">Neurosurgeon
								<option value="Obstetrician">Obstetrician
								<option value="Orthopedic Surgeon">Orthopedic Surgeon
								<option value="Pediatrician">Pediatrician
								<option value="Physiologist">Physiologist
								<option value="Psychiatrist">Psychiatrist
								<option value="Radiologist">Radiologist
					   </select>	
					   </div>
							
					    
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" name="em" placeholder="" required="">
					</div>
					<div class="form-group">
						<label>Contact</label>
						<input type="text" class="form-control" name="cn" pattern="[0-9]{10,10}" placeholder="" required="">
					</div>
				
				
					
					<button type="submit" class="btn submit mt-4">Register</button>
					<p class="text-center mt-5">
						
					</p>
				</form>
			</div>
		</div>
	</section>
	

<%@include file="footer.jsp"%>