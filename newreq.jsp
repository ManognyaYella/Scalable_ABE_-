<%@include file="ptheader.jsp"%>
<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('Ciphertext shared successfully..!')</script>");
}

%>
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">Upload PHR</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
					     <form class="login-wrapper" method="post" action="newreq1.jsp">
							
					    <div class="right_form">
								<div>
						    	<label>Select Proffession</label>
						    <select name="prof" class="form-control" style="width: 500px ">
								<option value="Audiologist" selected>Audiologist
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
					   <label>Hospital</label>
					<select  class="form-control"  name="hosp" style="width: 500px ">
	          
							<option value="">Select Hospital</option>
                            <option value="Hosp1">Hosp1</option>
							<option value="Hosp2">Hosp2</option>
							<option value="Hosp3">Hosp3</option>
					   </select>	
					   </div>

								
							<div>
						     	<span><button type="submit" value="Next" class="btn submit mt-4">Next</button></span>
						    </div>
								
							 
					    </div>
					    <div class="clearfix"></div>
						</form>
			</div>
		</div>
	</section>
		

	<!-- footer --><br><br><br>
	
<%@include file="footer.jsp"%>