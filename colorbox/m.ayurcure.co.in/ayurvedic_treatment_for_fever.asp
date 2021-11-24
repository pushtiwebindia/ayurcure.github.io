<%@ LANGUAGE="VBSCRIPT" %>
<!-- #include file="keyvals.asp"-->


!DOCTYPE html>
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40" lang="en-IN" xml:lang="en-IN">
<head>
<title>Ayurcure Clinic | Treatment  :: Fever</title>
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
					<a class="facebook" href="https://www.facebook.com/ayurcure.co.in"><i class="fa fa-facebook"></i></a>
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
			
			<li><a href="ayurvedic_treatment_for_polysystic.asp">Polycystic</a></li>
<li><a href="ayurvedic_treatment_for_psoriasis.asp">Psoriasis</a></li>
													
			<li><a href="ayurvedic_treatment_for_thyroid.asp">Thyroid</a></li>
<li><a href="ayurvedic_treatment_for_ulcerative.asp">Ulcerative</a></li>
													



													</ul>
												</li>				
											<li><a href="ayurvedic_treatment_for_AVN_Migraine_Thyroid_HIV_AIDS_Cancer_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_Obesity.asp">Testimonials</a></li>
												<li><a href="best_ayurvedic_treatment_services_in_mumbai.asp">Service</a></li>
												<li><a href="ayurvedic_treatment_for_AVN_Cancer_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_news.asp">News</a></li>
												<li><a href="ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver.asp">Contact</a></li>
																				
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
				
				<li>Fever</li>
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
														<div data-video="f2Z65fobH2I" id="video"> <img src="images/fever.jpg" alt="" class="img-responsive" /> </div>
													</div>
						<br> <p align="justify">
						In ayurveda, there is a special cure for the fever. Fever can caused due to malaria, typhoid, viral infection, chickangunya. It is been seen that mentioned fevers have developed resistance to many antibiotics.
						<br><br>
						We provide specialized medicine which will cure fever with in 3-4 days without any side effect on human body.<br><br>
						Fever is one of the most common medical signs and is characterized by an elevation of body temperature above the normal range of 36.5-37.5 °C (97.7-99.5 °F) due to an increase in the
						 temperature regulatory set-point.This increase in set-point triggers increased muscle tone and chills.<br><br>
						 As a person's temperature increases, there is, in general, a feeling of cold despite an increase in body temperature. Once body temperature has increased to the new set-point temperature, there is a feeling of warmth.
<br><br>
A fever can be caused by many medical conditions ranging from benign to potentially serious. Some studies suggest that fever is useful as a defense mechanism as the body's immune response can be strengthened at higher temperatures; however, there are arguments for and against the usefulness of fever, and the issue is controversial. With the exception of very high temperatures, treatment to reduce fever is often not necessary; however, antipyretic medications can be effective at lowering the temperature, which may improve the affected person's comfort.
<br><br>
Fever differs from uncontrolled hyperthermia,in that hyperthermia is an increase in body temperature over the body's thermoregulatory set-point, due to excessive heat production or insufficient thermoregulation."
						
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

								
								<br><br><p><font color="#FFFFFF"> </font></p>
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
			</form>									</div>

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
                                                <font color="#87A817">Polycystic</font></a><font color="#87A817"><br>
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
											</ul>
										 </div>
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
							<li><a class="facebook" href="https://www.facebook.com/ayurcure.co.in"><i class="fa fa-facebook"></i></a></li>
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