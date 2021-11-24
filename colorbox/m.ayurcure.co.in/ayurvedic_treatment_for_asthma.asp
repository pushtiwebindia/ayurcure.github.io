<%@ LANGUAGE="VBSCRIPT" %>
<!-- #include file="keyvals.asp"-->
<!DOCTYPE html>
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40" lang="en-IN" xml:lang="en-IN">
<head>
<title>Ayurcure Clinic | Treatment  :: Asthma</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />

<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href="file://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600" rel="stylesheet">
<link href="file://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<!--//web-fonts-->
</head>
<body>

<% 
' Function that Returns the reCaptcha code to place on the form
dim recaptcha_challenge_submit 
function recaptcha_challenge_writer(publickey) 
recaptcha_challenge_submit = "<script type='text/javascript' src='https://api.recaptcha.net/challenge?k=" & publickey & "'>" & _
	"</script>"& _
	"<noscript>" & _
	"<iframe src='https://api.recaptcha.net/noscript?k=" & publickey & " height='119' width='251' frameborder='0'></iframe><br>" & _
	"<textarea name='recaptcha_challenge_field' rows='3' cols='40'>" & _
	"</textarea>" & _
	"<input type='hidden' name='recaptcha_response_field' value='manual_challenge'>" & _
	"</noscript>"

end function
%>
<!--/main-header-->
  <div class="w3layouts-top-strip">
			<div class="top-srip-agileinfo">
				<div class="w3ls-social-icons text-left">
					<a class="facebook" href="https://www.facebook.com/ayurcure"><i class="fa fa-facebook"></i></a>
					<a class="youtube" href="https://www.youtube.com/user/ayurcr"><i class="fa fa-youtube"></i></a>

										
				</div>
				<div class="agileits-contact-info text-right">
					<ul>
						<li><i class="fa fa-volume-control-phone" aria-hidden="true"></i> +91 7208 732 470</li>
							<li><i class="fa fa-volume-control-phone" aria-hidden="true"></i> +91 8108 576391</li>
						<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="ayurcr@gmail.com">ayurcr@gmail.com</a></li>					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
  <!--/banner-section-->
	<div id="demo-1" class="banner-inner">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
								<nav class="navbar navbar-default">
									<div class="navbar-header">
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
										<h1><a  href="index.asp">
										                                         <img src="images/logo.png" width="99" height="79">
										</h1>
									</div>
									<!-- navbar-header -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										
				<ul class="nav navbar-nav">
											<li><a href="index.asp">Home</a></li>
												<li><a href="ayurvedic_clinics_in_Mumbai_ayurvedic_doctors_in_Mumbai.asp">About Us</a></li>
																	<li><a href="ayurvedic_panchkarma_service_treatment_Vaman_Virechanam_NAsyam_Sneha-vasti_Kashaya-vasti.asp">Panchakarma</a></li>
												<li class="dropdown">
												<a href="ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_treatment.asp" class="dropdown-toggle hvr-bounce-to-bottom" data-hover="Pages" data-toggle="dropdown" aria-expanded="false">Treatment<b class="caret"></b></a>
													<ul class="dropdown-menu">
				<li><a href="ayurvedic_treatment_for_acidity.asp">Acidity</a></li>
													
			<li><a href="ayurvedic_treatment_for_aids.asp">AIDS</a></li>
			<li><a href="ayurvedic_treatment_for_alzeimer.asp">Alzeimer</a></li>
													
			<li><a href="ayurvedic_treatment_for_arthritis.asp">Arthritis</a></li>

<li><a href="ayurvedic_treatment_for_asthma.asp">Asthma</a></li>
													
			<li><a href="ayurvedic_treatment_for_avn.asp">AVN</a></li>

<li><a href="ayurvedic_treatment_for_backpain.asp">Backpain</a></li>
													
			<li><a href="ayurvedic_treatment_for_cancer.asp">Cancer</a></li>
<li><a href="ayurvedic_treatment_for_diabetes.asp">Diabetes</a></li>
													
			<li><a href="ayurvedic_treatment_for_eczema.asp">Eczema</a></li>
<li><a href="ayurvedic_treatment_for_enlarged.asp">Enlarged</a></li>
													
			<li><a href="ayurvedic_treatment_for_epilepsy.asp">Epilepsy</a></li>
<li><a href="ayurvedic_treatment_for_fever.asp">Fever</a></li>
													
			<li><a href="ayurvedic_treatment_for_heart.asp">Heart disease</a></li>
<li><a href="ayurvedic_treatment_for_bp.asp">High BP</a></li>
													
			<li><a href="ayurvedic_treatment_for_hiv.asp">HIV</a></li>
			
			<li><a href="ayurvedic_treatment_for_hyperthyroid.asp">HyperThyroidism</a></li>
<li><a href="ayurvedic_treatment_for_kidney.asp">Kidney Disease 1</a></li>
													
			<li><a href="ayurvedic_treatment_for_infertility.asp">Male/Female Infertility</a></li>
<li><a href="ayurvedic_treatment_for_mental_disease.asp">Mental Disease 3</a></li>
													
			<li><a href="ayurvedic_treatment_for_migraine.asp">Migraine</a></li>
			
			<li><a href="ayurvedic_treatment_for_polysystic.asp">Polysystic</a></li>
<li><a href="ayurvedic_treatment_for_psoriasis.asp">Psoriasis</a></li>
													
			<li><a href="ayurvedic_treatment_for_thyroid.asp">Thyroid</a></li>
<li><a href="ayurvedic_treatment_for_ulcerative.asp">Ulcerative</a></li>
													



													</ul>
												</li>				
												
																	

												<li><a href="ayurvedic_treatment_for_AVN_Migraine_Thyroid_HIV_AIDS_Cancer_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_Obesity.asp">Testimonials</a></li>
												<li><a href="best_ayurvedic_treatment_services_in_mumbai.asp">Service</a></li>
												<li><a href="ayurvedic_treatment_for_AVN_Cancer_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_news.asp">News</a></li>
												<li><a href=" ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver.asp">Contact</a></li>
																							
										</ul>



									</div>
									<div class="clearfix"> </div>	
								</nav>
														
							</div> 

			
		<!--//header-w3l-->
	
		</div>
		 </div>
  <!--/banner-section-->
 <!--//main-header-->
	        
						<!-- breadcrumb -->
	<div class="w3_breadcrumb">
	<div class="breadcrumb-inner">	
			<ul>
				<li><a href="index.asp">Home</a><i>/</i></li>
				
				<li>Asthma</li>
			</ul>
		</div>
	</div>
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
						<div class="container">
				            <div class="inner-agile-w3l-part-head">
					          
						
							</div>
							   <div class="latest-news-agile-info">
								   <div class="col-md-8 latest-news-agile-left-content">
											<div class="single video_agile_player">
											       
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> <img src="images/asthma.jpg" alt="" class="img-responsive" /> </div>
													</div>
						<br> <p align="justify"> In today's life, there is increase in incidences of asthma. Stressful life, rapid industrialization, excessive crowding, increasing pollution are some 
						of the factors responsible for such increase. It has been stated that 15% of the Indian population suffer from asthma. In developed countries like USA, every year there is 
						10% increase in asthmatic patient. In other streams of medicine, there is no cure for asthma but as per Ayurveda, asthma can be cured with in three to six months.
												 <br><br>
						 Asthma (from the Greek ἅσθμα, ásthma, ""panting"") is a common chronic inflammatory disease of the airways characterized by variable and recurring symptoms, 
						 reversible airflow obstruction and bronchospasm.Common symptoms include wheezing, coughing, chest tightness, and shortness of breath.
											<br><br>
						Asthma is thought to be caused by a combination of genetic and environmental factors.Its diagnosis is usually based on the pattern of symptoms, response to therapy 
						over time and spirometry. It is clinically classified according to the frequency of symptoms, forced expiratory volume in one second (FEV1), and peak expiratory flow rate.
						Asthma may also be classified as atopic (extrinsic) or non-atopic (intrinsic) where atopy refers to a predisposition toward developing type 1 hypersensitivity reactions.
							<br><br>
						Treatment of acute symptoms is usually with an inhaled short-acting beta-2 agonist (such as salbutamol) and oral corticosteroids. In very severe cases, intravenous 
						corticosteroids, magnesium sulfate, and hospitalization may be required.[10] Symptoms can be prevented by avoiding triggers, such as allergens and irritants, and by the 
						use of inhaled corticosteroids.Long-acting beta agonists (LABA) or leukotriene antagonists may be used in addition to inhaled corticosteroids if asthma symptoms remain 
						uncontrolled. The occurrence of asthma has increased significantly since the 1970s. In 2011, 235-300 million people globally have been diagnosed with asthma, and it 
						caused 250,000 deaths."
<br><br>
<b>SAMPRAPTI (PATHOGENESIS)</b> - The vitiated pranavayu, combines with deranged "kapha dosha" dosha in the lungs causing obstruction in the pranvahshrotas (Respiratory passage).
This results in difficulty in breathing this condition is known as swas yoga. 
<br><br>
<b>There are five type of yoga</b> <br>

1. Maha swas<br>

2. Urdhava swas<br>

3. Chinna swas<br>

4. Tamak swas<br>

5. Kshudra swas<br><br>

<b>Causes</b>
<br>
<b>A] FACTORS RELATED TO DIET</b> - Excessive indulgence in lablab beans, black gram, raw milk, excessive use of ruksha (dry) and guru (heave) diet can lead to asthma.
<br>
<b>B] FACTORS RELATED TO WORK</b> - Excessive exposure to dust, smoke and cold wind. Cold water bath or bath with excessive warm water, exhaustive exercise, suppression 
of natural urges can lead to asthmatic condition.
<br><br>

<b>Prevention</b><br>
1. Avoid cold and damp places.<br>
2. Follow breathing exercises<br>
3. Avoid tobacco, alcohol and smoking.<br>
4. Avoid perfumes , Agarbatti. Mosquito repellents<br>
5. Drink plenty of boiled water 6. Avoid over exercise and over indulgence in sex<br><br>
<b>Treatment
</b><br>
Ayurveda provides a special remedy for complete cure of asthma.
	
							
 
                         </p>
										    </div>
										
																		<div class="plans-section">
				 <div class="container">
				 <h3 class="w3l-inner-h-title">doctor on call</h3>
					<h4 class="w3l-inner-h-title" align="center">Your Doctor, Anytime, Anywhere</h4>	
								<div class="book-form">

			   <form action="mailsent.asp" method="POST">
			   
			   
					<div class="col-md-6 form-date-w3-agileits">
						<label><i class="fa fa-user" aria-hidden="true"></i>First  Name :</label>
						<input type="text" name="cname" placeholder="Your name" required="" size="20">
					</div>
						
						<div class="col-md-6 form-date-w3-agileits">
						<label><i class="fa fa-user" aria-hidden="true"></i>Last  Name :</label>
						<input type="text" name="lname" placeholder="Your Last name" required="" size="20">
					</div>
	
					
					
					 <div class="col-md-6 form-date-w3-agileits">
									<label><i class="fa fa-globe" aria-hidden="true"></i> City :</label>
									<input  type="text" placeholder="City" name="city" type="text" size="20" >
								
								</div>
								<div class="col-md-6 form-time-w3layouts second-agile">
							<label><i class="fa fa-phone" aria-hidden="true"></i> Tel. No. </label>
							<input type="text" size="20" name="phone" placeholder="Mobile">
					</div>
								
					<div class="col-md-6 form-date-w3-agileits">
						        <label><i class="fa fa-envelope" aria-hidden="true"></i> Email :</label>
									<input  type="text" placeholder="E-mail Address" name="email_address" size="20" >
									
								</div>
								<div class="col-md-6 form-date-w3-agileits">
						        <label><i class="fa fa-map-marker" aria-hidden="true"></i>Address</label>
									<input  type="text" placeholder="Address" name="addr" type="text" size="20" >
									
								</div>

								<div class="col-md-6 form-date-w3-agileits">
						        <label><i class="fa fa-file-text-o" aria-hidden="true"></i>Your Requirements</label>
									<input  type="text" placeholder="Write your enquiry / Feedback" name="inq" size="20" >
									
								</div>

								
								<br><br><p><font color="#FFFFFF"></font></p>
															<div class="clearfix"> </div>
															
															<div align=left">               <%
'Call the Function to return the reCaptcha code
recaptcha_challenge_writer publickey
'Draw the reCaptcha box
response.write "<p align='left'>" & recaptcha_challenge_submit & "</p>"
%></div>

					<div class="make wow shake" data-wow-duration="1s" data-wow-delay=".5s">
						  <input type="submit" value="Submit">
						  <input type="submit" value="Reset">
						  					</div>
			</form>	
								</div>

		</div>

				

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
								   <div class="col-md-4 latest-news-agile-right-conte
								 					<div class="w3l-blog-list">
											<h4 class="side-t-w3l-agile">Treatments</h4>
											<ul>
												<a href="ayurvedic_treatment_for_acidity.asp"><i class="fa fa-share" style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Acidity</font></a><font color="#87A817"><br>										
												</font>										
												<a href="ayurvedic_treatment_for_aids.asp"><i class="fa fa-share" style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">AIDS</font></a><font color="#87A817"><br>
												</font>
												
												<a href="ayurvedic_treatment_for_alziemer.asp"><i class="fa fa-share" style="color:#87A817"  aria-hidden="true"></i> 
                                                <font color="#87A817">Alziemer</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_arthritis.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Arthritis</font></a><font color="#87A817"><br>
																								
												</font>
																								
												<a href="ayurvedic_treatment_for_asthma.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Asthma</font></a><font color="#87A817"></li><br>
												</font>
												<a href="ayurvedic_treatment_for_avn.asp"><i class="fa fa-share" style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">AVN</font></a><font color="#87A817"><br>										
												</font>	
												<a href="ayurvedic_treatment_for_backpain.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Backpain</font></a><font color="#87A817"></li><br>
												</font>
												<a href="ayurvedic_treatment_for_cancer.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Cancer</font></a><font color="#87A817"></li><br>
												</font>
												<a href="ayurvedic_treatment_for_diabetes.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Diabetes</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_eczema.asp"><i class="fa fa-share" style="color:#87A817"  aria-hidden="true"></i> 
                                                <font color="#87A817">Eczema</font></a><font color="#87A817"><br>										
												</font>										
												<a href="ayurvedic_treatment_for_enlarged.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Enlarged</font></a><font color="#87A817">	<br>								
												</font>								
												<a href="ayurvedic_treatment_for_epilepsy.asp"><i class="fa fa-share" style="color:#87A817"  aria-hidden="true"></i> 
                                                <font color="#87A817">Epilepsy</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_fever.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Fever</font></a><font color="#87A817">		<br>										
												</font>										
												<a href="ayurvedic_treatment_for_heart.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Heart Disease</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_hiv.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">High BP</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_acidity.asp"><i class="fa fa-share" style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">HIV</font></a><font color="#87A817"><br>										
												</font>	
												<a href="ayurvedic_treatment_for_hyperthyroid.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">HyperThyroidism</font></a><font color="#87A817">	<br>											
												</font>											
												<a href="ayurvedic_treatment_for_kidney.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Kidney Disease1</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_infertility.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Male / Female Infertility</font></a><font color="#87A817">	<br>
												</font>
												<a href="ayurvedic_treatment_for_mental_disease.asp"><i class="fa fa-share" style="color:#87A817"  aria-hidden="true"></i> 
                                                <font color="#87A817">Mental Disease3</font></a><font color="#87A817">			<br>									
												</font>									
												<a href="ayurvedic_treatment_for_migraine.asp"><i class="fa fa-share" style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Migraine</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_polysystic.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Polysystic</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_psoriasis.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Psoriasis</font></a><font color="#87A817"><br>
												</font>
												<a href="ayurvedic_treatment_for_throid1.asp"><i class="fa fa-share" style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Thyroid</font></a><font color="#87A817"><br>										
												</font>	
												<a href="ayurvedic_treatment_for_ulcerative.asp"><i class="fa fa-share"  style="color:#87A817" aria-hidden="true"></i> 
                                                <font color="#87A817">Ulcerative</font></a><font color="#87A817">	<br>											
											    </font>											
											</ul>									 </div>
											<div class="agile-info-recent">
											
											
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										
							       </div>
								   <div class="clearfix"></div>
							   </div>
					
						</div>
				</div>
			<!--//content-inner-section-->
 <!-- Footer -->
	<div class="w3l-footer">
		<div class="container">
         <div class="footer-info-agile">
				<div class="col-md-2 footer-info-grid links">
					<h4>Quick links</h4>
					<ul >
						       <li><a href="index.asp">Home</a></li> 
								<li><a href="ayurvedic_clinics_in_Mumbai_ayurvedic_doctors_in_Mumbai.asp">About Us</a></li> 
								<li><a href="ayurvedic_panchkarma_service_treatment_Vaman_Virechanam_NAsyam_Sneha-vasti_Kashaya-vasti.asp">Panchakarma</a></li>
								<li><a href="ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_treatment.asp">Treatment</a></li>
								<li><a href="best_ayurvedic_treatment_services_in_mumbai.asp">Service</a></li> 
								<li><a href="ayurvedic_treatment_for_AVN_Cancer_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_news.asp">News</a></li> 
								<li><a href="ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver.asp">Contact</a></li> 
					</ul>
				</div>
				<div class="col-md-3 footer-info-grid address">
					<h4>Address</h4>
					<address>
						<ul>
							<li>Gajanan Bldg No. 6,</li>
							<li>Near Goregaon Station,</li>
							<li>Behind Greater Bank,</li>
							<li>Goregaon (West)</li>
							<li>Mumbai 400104</li>

							<li>Mobile : +91 7208 732 470</li>
							<li>Email : <a class="mail" href="ayurcr@gmail.com">ayurcr@gmail.com</a></li>
						</ul>
					</address>
				</div>
				<div class="col-md-3 footer-grid">
				    <h4><a href="http://ayurcure123.blogspot.in/">
                   <font color="#FFFFFF">Blog</font></a>
</h4>
					<div class="footer-grid-instagram">
					<a href="#"><img src="images/f1.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
					<a href="#"><img src="images/f2.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
						<a href="#"><img src="images/f3.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
					<a href="#"><img src="images/f4.jpg" alt=" " class="img-responsive"></a>
					</div>
					<div class="clearfix"> </div>

				</div>
				<div class="col-md-4 footer-info-grid">
				<div class="connect-social">
					<h4>Connect with us</h4>
					<section class="social">
                        <ul>
							<li><a class="facebook" href="https://www.facebook.com/ayurcure"><i class="fa fa-facebook"></i></a></li>
							<li><a class="youtube" href="https://www.youtube.com/user/ayurcr"><i class="fa fa-youtube"></i></a></li>
						</ul>
					</section>

				</div>
					

					
				</div>
				<div class="clearfix"></div>
			</div>

				   </div>
     </div>

		
			<div class="w3agile_footer_copy">
				    <p>© 2014 Ayurcure. All rights reserved | Designed and SEO by <a href="http://pushtiwebindia.com/">PUSHTI Web And Software Solutions</a></p>
			</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			                </script>
		<!-- //Dropdown-Menu-JavaScript -->


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="js/main.js"></script>

<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
                            </script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					        </script>

<!--end-smooth-scrolling-->
<!--js for bootstrap working-->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>