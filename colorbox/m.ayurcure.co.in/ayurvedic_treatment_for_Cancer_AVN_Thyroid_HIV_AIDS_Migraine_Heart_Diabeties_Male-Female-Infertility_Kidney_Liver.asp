<%@ LANGUAGE="VBSCRIPT" %>
<!DOCTYPE html>
<html lang=en-IN xml:lang=en-IN>
<head>
<title>Ayurvedic Treatment for Avascular Necrosis in Mumbai, India</title>
<meta name=description content="Know everything about effective ayurvedic treatment for avascular necrosis with highly skilled doctors at Ayurcure Mumbai India. Call us to book your appointment.">
<meta name=keywords content="Ayurvedic Treatment for AVN, Herbal Ayurvedic Medicines for Avascular Necrosis, Herbal Ayurvedic Medicines for Cancer, ayurvedic clinics in mumbai, ayurvedic treatment in mumbai, ayurvedic panchakarma treatment in mumbai, ayurvedic doctor in Mumbai, ayurvedic cancer treatment in mumbai, ayurvedic treatment hiv aids, ayurvedic diabetes treatment, Ayurvedic Treatment for Migraine, Ayurvedic Treatment for Thyroid, Ayurvedic Hyperthyroidism Treatment, Ayurvedic Treatment for AIDS, Diabetes, cancer, Mumbai, Bridal Package, Facials, Hair Treatments, Mumbai">
<meta name=viewport content="width=device-width, initial-scale=1">
<meta http-equiv=Content-Type content="text/html; charset=UTF-8" />
<script type=application/x-javascript>addEventListener("load",function(){setTimeout(hideURLbar,0)},false);function hideURLbar(){window.scrollTo(0,1)}</script>
<link href=css/bootstrap.css rel=stylesheet type=text/css media=all />
<link rel=stylesheet href=css/flexslider.css type=text/css media=screen property />
<link rel=stylesheet type=text/css href=css/zoomslider.css />
<link rel=stylesheet type=text/css href=css/style.css />
<link href=css/font-awesome.css rel=stylesheet>
<script type=text/javascript src=js/modernizr-2.6.2.min.js></script>
<link href="file://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600" rel=stylesheet>
<link href="file://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel=stylesheet>
<script src=https://www.google.com/recaptcha/api.js></script>
<script type=text/javascript src=http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js></script>
<script type=text/javascript src=staticlogo.js></script>
</head>
<body>
<% 
Dim action, reresponse, recaptchagood
action = Request.Form("Action")


If action ="Go" then

 reresponse= Request.form("g-recaptcha-response")
 Dim VarString
 VarString = _
          "?secret=6Lf6LYwUAAAAABe4RJPdG8BgoXgX227PFEjLJp5j" & _
          "&response=" & reresponse  & _
  "&remoteip=" & Request.ServerVariables("REMOTE_ADDR") 

 Dim url
 url="https://www.google.com/recaptcha/api/siteverify" & VarString

  Dim objXmlHttp
  Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP")
  
  objXmlHttp.open "POST", url, False
  objXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
  objXmlHttp.send

  Dim ResponseString
  ResponseString = objXmlHttp.responseText
  Response.Write(ResponseString)
  Set objXmlHttp = Nothing
  
 If instr(ResponseString, "success" & chr(34) &": true")>0  then
 recaptchagood="Yes"
Response.write "Thank you " & Request.Form("cname") & " " & Request.Form("email_address") & " for your submission."

Dim mycheckbox, description, cname, lname, companyname, desig, street, city, cityname, state, addr, Countrycode, zip, phone, mno, fax, email_address, inq, hearUs, nm, nm1

'nm = nm & "Sender's Interest In: " & Request.Form("mycheckbox")& chr(13) & chr(10) & vbCrLf & vbCrLf
'nm = nm & "Sender's Comments and Message: " & Request.Form("description") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's First Name: " & Request.Form("cname") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Last Name: " & Request.Form("lname") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's E-mail Address: " & Request.Form("email_address") &  chr(13) & chr(10) & vbCrLf & vbCrLf


nm = nm & "Sender's Phone No: " & Request.Form("phone") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Address: " & Request.Form("addr") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's City: " & Request.Form("city") &  chr(13) & chr(10) & vbCrLf & vbCrLf

nm = nm & "Sender's Inquiry: " & Request.Form("inq") &  chr(13) & chr(10) & vbCrLf & vbCrLf


nm = nm & "Sender's IPAddress: " & Request.ServerVariables ("REMOTE_ADDR") & chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Path: " & Request.ServerVariables ("PATH_INFO") & chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Coockies: " & Request.ServerVariables ("HTTP_COOKIE") & chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Previous Site: " & Request.ServerVariables ("HTTP_REFERER") & chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Browser: " & Request.ServerVariables ("HTTP_USER_AGENT") & chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & chr(13) & chr(10) & vbCrLf & vbCrLf

' Now gets the data from Form

cname = Trim(Request.Form("cname"))
'posit = Trim(Request.Form("posit"))
'oname = Trim(Request.Form("oname"))
'otype = Trim(Request.Form("otype"))
email_address = Trim(Request.Form("email_address"))
'taddress = Trim(Request.Form("taddress"))
'city = Trim(Request.Form("city"))
'pincode = Trim(Request.Form("pincode"))
'countrycode = Trim(Request.Form("countrycode"))
'phone1 = Trim(Request.Form("phone1"))
'phone2 = Trim(Request.Form("phone2"))
'faxno = Trim(Request.Form("fax"))
'mobile = Trim(Request.Form("mobile"))
'mycheckbox=trim(Request.Form("mycheckbox"))
'other=Trim(Request.Form("other"))
'tsuggesion =Trim( Request.Form("tsuggesion"))

Set myMail=CreateObject("CDO.Message")
			myMail.Subject="Enquiry From Website Ayurcure - www.ayurcure.co.in."
			myMail.From="inquiry@ayurcure.co.in"
'myMail.To="pushtiwebindia@gmail.com"
			myMail.To="sales@ayurcure.co.in"
			myMail.CC="ayurcr@gmail.com"
			myMail.BCC="sales@pushtiwebindia.com"
			myMail.TextBody=nm
			myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "bhus-pp-wb7.webhostbox.net" 
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 587
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = "1"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "inquiry@ayurcure.co.in"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "Inquiry123#1"
myMail.Configuration.Fields.Update

			myMail.Send
			set myMail=nothing 
'nm1 = nm1 & "AUTO-REPLY. " & chr(13) & chr(10) & vbCrLf 

nm1 = nm1 & "AUTO-REPLY. " & chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "Dear " & cname & chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "Thank You for your valued enquiry/Feedback to ayurcure.co.in. We have received your mail. " & chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "We  will contact you soon. " &  chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "Feel free to call us on .: +91 72087 32470 OR +91 81085 76391 for prompt reply. " &  chr(13) & chr(10) & vbCrLf & vbCrLf 
nm1 = nm1 & "Thank You with Best Regards, " &  chr(13) & chr(10) & vbCrLf & vbCrLf 

nm1 = nm1 & "Ayurcure.co.in Team" &  chr(13) & chr(10) & vbCrLf 



Set myMail1=CreateObject("CDO.Message")
			myMail1.Subject="AUTO-REPLY: Thank you for your valued enquiry/Feedback to www.ayurcure.co.in. We have received your Inquiry and contact you with in 24 hours."
			myMail1.From="inquiry@ayurcure.co.in"
			myMail1.To= email_address
			myMail1.BCC="sales@pushtiwebindia.com"
			myMail1.TextBody=nm1
			myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "bhus-pp-wb7.webhostbox.net" 
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 587
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = "1"
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "inquiry@ayurcure.co.in"
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "Inquiry123#1"
myMail1.Configuration.Fields.Update

			myMail1.Send
			set myMail1=nothing
			Response.write "Thank you " & Request.Form("cname") & " " & Request.Form("email_address") & " for your submission."
			
			else

'Response.write "You entered the wrong words - Press the Back button on your browser to try again."

Response.write ("<p align='center' style='color:#000000'>You entered the wrong words - Press the  BACK button on your browser to try again.</p>")





'incorrect response - put any additional text etc. that you want the user to see here before the response.end statement
Response.End
 
end if

End if
			
%>
<div class=w3layouts-top-strip>
<div class=top-srip-agileinfo>
<div class="w3ls-social-icons text-left">
<a class=facebook href=https://www.facebook.com/ayurcure.co.in><i class="fa fa-facebook"></i></a>
<a class=youtube href=https://www.youtube.com/user/ayurcr><i class="fa fa-youtube"></i></a>
</div>
<div class="agileits-contact-info text-right">
<ul>
<li><i class="fa fa-volume-control-phone" aria-hidden=true></i> <a href=https://bit.ly/3mxJHsB>Submit Your Enquiry Online</a></li> </ul>
</div>
<div class=clearfix></div>
</div>
</div>
<div id=demo-1 class=banner-inner>
<div class=header-w3-agileits id=home>
<div class=inner-header-agile>
<nav class="navbar navbar-default">
<div class=navbar-header>
<button type=button class=navbar-toggle data-toggle=collapse data-target=#bs-example-navbar-collapse-1>
<span class=sr-only>Toggle navigation</span>
<span class=icon-bar></span>
<span class=icon-bar></span>
<span class=icon-bar></span>
</button>
<h1><a href=index.asp><img src=images/logo.png width=99 height=79></a>
</a>
</h1>
</div>
<div class="collapse navbar-collapse" id=bs-example-navbar-collapse-1>
<ul class="nav navbar-nav">
<li><a href=index.asp>Home</a></li>
<li><a href=ayurvedic_clinics_in_Mumbai_ayurvedic_doctors_in_Mumbai.asp>About Us</a></li>
<li><a href=ayurvedic_panchkarma_service_treatment_Vaman_Virechanam_NAsyam_Sneha-vasti_Kashaya-vasti.asp>Panchakarma</a></li>
<li class=dropdown>
<a href=ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_treatment.asp class="dropdown-toggle hvr-bounce-to-bottom" data-hover=Pages data-toggle=dropdown aria-expanded=false>Treatment<b class=caret></b></a>
<ul class=dropdown-menu>
<li><a href=ayurvedic_treatment_for_acidity.asp>Acidity</a></li>
<li><a href=ayurvedic_treatment_for_aids.asp>AIDS</a></li>
<li><a href=ayurvedic_treatment_for_alzeimer.asp>Alzeimer</a></li>
<li><a href=ayurvedic_treatment_for_arthritis.asp>Arthritis</a></li>
<li><a href=ayurvedic_treatment_for_asthma.asp>Asthma</a></li>
<li><a href=ayurvedic_treatment_for_avn.asp>AVN</a></li>
<li><a href=ayurvedic_treatment_for_backpain.asp>Backpain</a></li>
<li><a href=ayurvedic_treatment_for_cancer.asp>Cancer</a></li>
<li><a href=ayurvedic_treatment_for_diabetes.asp>Diabetes</a></li>
<li><a href=ayurvedic_treatment_for_eczema.asp>Eczema</a></li>
<li><a href=ayurvedic_treatment_for_enlarged.asp>Enlarged</a></li>
<li><a href=ayurvedic_treatment_for_epilepsy.asp>Epilepsy</a></li>
<li><a href=ayurvedic_treatment_for_fever.asp>Fever</a></li>
<li><a href=ayurvedic_treatment_for_heart.asp>Heart disease</a></li>
<li><a href=ayurvedic_treatment_for_bp.asp>High BP</a></li>
<li><a href=ayurvedic_treatment_for_hiv.asp>HIV</a></li>
<li><a href=ayurvedic_treatment_for_hyperthyroid.asp>HyperThyroidism</a></li>
<li><a href=ayurvedic_treatment_for_kidney.asp>Kidney Disease 1</a></li>
<li><a href=ayurvedic_treatment_for_infertility.asp>Male/Female Infertility</a></li>
<li><a href=ayurvedic_treatment_for_mental_disease.asp>Mental Disease 3</a></li>
<li><a href=ayurvedic_treatment_for_migraine.asp>Migraine</a></li>
<li><a href=ayurvedic_treatment_for_polysystic.asp>Polysystic Ovarian Disease</a></li>
<li><a href=ayurvedic_treatment_for_psoriasis.asp>Psoriasis</a></li>
<li><a href=ayurvedic_treatment_for_thyroid.asp>Thyroid</a></li>
<li><a href=ayurvedic_treatment_for_ulcerative.asp>Ulcerative Colitis</a></li>
</ul>
</li>
<li><a href=ayurvedic_treatment_for_AVN_Migraine_Thyroid_HIV_AIDS_Cancer_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_Obesity.asp>Testimonials</a></li>
<li><a href=best_ayurvedic_treatment_services_in_mumbai.asp>Service</a></li>
<li><a href=ayurvedic_treatment_for_AVN_Cancer_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_news.asp>News</a></li>
<li class=active><a href=ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver.asp>Contact</a></li>
</ul>
</div>
<div class=clearfix> </div>
</nav>
</div>
</div>
</div>
<div class=w3_breadcrumb>
<div class=breadcrumb-inner>
<ul>
<li><a href=index.asp>Home</a> <i>/</i></li>
<li>Contact</li>
</ul>
</div>
</div>
<div class=w3_content_agilleinfo_inner>
<div class=container>
<div class=inner-agile-w3l-part-head>
<h3 align=center>Avascular Necrosis Treatment in Ayurveda</h3>
<h3 align=center><br>
Ayurvedic Treatment is the best for AVN, Avascular Necrosis</h3>
<h6 align=justify><br>
​
According to Ayurveda, Avascular necrosis resembles Dhatu parinaam dushti, Vatarakta, Asthi kshaya and Kati graha. The efficiency of Ayurvedic treatment in the management of AVN of the femoral head is quite encouraging. Tikta Ksheera Basti, Anuvasan vasti, Abhyangam, Tail Dhara, Lepam, along with Ayurvdic Medicines are really helpful.</h6>
<h2 class=w3l-inner-h-title>Contact</h2>
<div class=w3_mail_grids>
<form action=ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver.asp? method=POST>
<div class="col-md-6 w3_agile_mail_grid">
<input type=text placeholder="First Name" required=yes size=20 name=cname><br><br>
<input type=text placeholder="Last Name" required size=20 name=lname><br><br>
<input type=text placeholder=City required size=20 name=city><br><br>
<input type=text placeholder="Tel. No." required size=20 name=phone><br><br>
<input type=text placeholder=Email required size=20 name=email_address><br><br>
</div>
<div class="col-md-6 w3_agile_mail_grid">
<textarea name=addr placeholder="Your Address" required rows=1 cols=20></textarea>
</div>
<div class="col-md-6 w3_agile_mail_grid">
<textarea name=inq placeholder="Your Requirements" required rows=1 cols=20></textarea>
<div class=g-recaptcha data-sitekey=6Lf6LYwUAAAAAMPLPbnlcPgYfQzwpA0uK8myUbH8></div><input type=hidden name=Action value=Go>
<input type=submit value=Submit>
<input type=submit value=Reset>
</div>
<div class=clearfix> </div>
</form>
</div>
</div>
<div class=map>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d25354.780986991318!2d72.861057827562!3d19.15100700134716!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfbb070e06cd8a48!2sAyurcure+Mumbai!5e0!3m2!1sen!2sin!4v1510058580758" frameborder=0 style="border:0 none" allowfullscreen></iframe>
</div>
</div>
<div class=w3l_contact-bottom>
<div class=container>
<div class=w3ls_con_grids>
<div class=w3ls_footer_grid>
<div class="col-md-4 con-ions-left">
<div class=con-ions-left-w3l>
<i class="fa fa-map-marker" aria-hidden=true></i>
</div>
<div class=con-grid-w3l-leftr>
<h4>Location</h4>
<p>Goregaon (West), Mumbai 400104</p>
</div>
<div class=clearfix> </div>
</div>
<div class="col-md-4 con-ions-left">
<div class=con-ions-left-w3l>
<i class="fa fa-envelope" aria-hidden=true></i>
</div>
<div class=con-grid-w3l-leftr>
<h4>Email</h4>
<a href=mailto:ayurcr@gmail.com>ayurcr@gmail.com</a>
</div>
<div class=clearfix> </div>
</div>
<div class="col-md-4 con-ions-left">
<div class=con-ions-left-w3l>
<i class="fa fa-phone" aria-hidden=true></i>
</div>
<div class=con-grid-w3l-leftr>
<h4>Call Us</h4>
<p>+91 7208 732 470</p>
</div>
<div class=clearfix> </div>
</div>
<div class=clearfix> </div>
</div>
</div>
</div>
</div>
<div class=w3l-footer>
<div class=container>
<div class=footer-info-agile>
<div class="col-md-2 footer-info-grid links">
<h4>Quick links</h4>
<ul>
<li><a href=index.asp>Home</a></li>
<li><a href=ayurvedic_clinics_in_Mumbai_ayurvedic_doctors_in_Mumbai.asp>About Us</a></li>
<li><a href=ayurvedic_panchkarma_service_treatment_Vaman_Virechanam_NAsyam_Sneha-vasti_Kashaya-vasti.asp>Panchakarma</a></li>
<li><a href=ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_treatment.asp>Treatment</a></li>
<li><a href=best_ayurvedic_treatment_services_in_mumbai.asp>Service</a></li>
<li><a href=ayurvedic_treatment_for_AVN_Cancer_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver_news.asp>News</a></li>
<li><a href=ayurvedic_treatment_for_Cancer_AVN_Thyroid_HIV_AIDS_Migraine_Heart_Diabeties_Male-Female-Infertility_Kidney_Liver.asp>Contact</a></li>
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
<li><a href=https://bit.ly/3mxJHsB>Send Your Detailed Inquiry to Doctor</a></li>
</ul>
</address>
</div>
<div class="col-md-3 footer-grid">
<h4>Blog</h4>
<div class=footer-grid-instagram>
<a href=#>
<img src=images/f1.jpg alt=" " class=img-responsive width=130 height=100></a>
</div>
<div class=footer-grid-instagram>
<a href=#>
<img src=images/f2.jpg alt=" " class=img-responsive width=130 height=100></a>
</div>
<div class=footer-grid-instagram>
<a href=#>
<img src=images/f3.jpg alt=" " class=img-responsive width=130 height=100></a>
</div>
<div class=footer-grid-instagram>
<a href=#>
<img src=images/f4.jpg alt=" " class=img-responsive width=130 height=100></a>
</div>
<div class=clearfix> </div>
</div>
<div class="col-md-4 footer-info-grid">
<div class=connect-social>
<h4>Connect with us</h4>
<section class=social>
<ul>
<li><a class=facebook href=https://www.facebook.com/ayurcure.co.in><i class="fa fa-facebook"></i></a></li>
<li><a class=youtube href=https://www.youtube.com/user/ayurcr><i class="fa fa-youtube"></i></a></li>
</ul>
</section>
</div>
</div>
<div class=clearfix></div>
</div>
</div>
</div>
<div class=w3agile_footer_copy>
<p>© 2021 Ayurcure. All rights reserved |
<b><font face=Candara size=2><i>
<font color=#FFFFFF>
<a target=_blank href=http://www.pushtiwebindia.com/submission.htm>
SEO</a> &amp;
<a href=http://www.pushtiwebindia.com/company.htm>
Website designed</a> by
<a target=_blank href=http://www.pushtiwebindia.com/>
Pushti Web and&nbsp; Software Solutions</a> </font>
</i></font>
<i><font face=Candara size=1><font color=#FFFFFF>
(<a target=_blank href=https://www.facebook.com/pages/Pushti-Web-and-Software-Solutions/323212414381662>Gaurang Goradiya</a></font>),
<font color=#FFFFFF>
<font color=#595959>
<a target=_blank href=http://www.pushtiwebindia.com/web_designer_thane.asp>
Web designing Thane</a></font>,
<a href=https://www.pushti.in>www.pushti.in</a>,
<font color=#808000>
<a href=http://www.pushtiwebindia.com/web_designer_borivali.asp>
Borivali,</a></font> <font color=#808000>
<a href=http://www.pushtiwebindia.com/web_designer_goregaon.asp>
Goregaon</a>,
<a href=http://www.pushtiwebindia.com/web_designer_malad.asp>
Malad</a>,
<a href=http://www.pushtiwebindia.com/web_designer_kandivali.asp>
Kandivali</a>,
<a href=http://www.pushtiwebindia.com/web_designer_virar.asp>
Virar</a>,
<a href=http://www.pushtiwebindia.com/web_designer_vasai.asp>
Vasai</a>,
<a href=http://www.pushtiwebindia.com/web_designer_miraroad.asp>
Miraroad</a>,
<a href=http://www.pushtiwebindia.com/web_designer_bhayandar.asp>
Bhayandar</a></font></font></font></i></b></p>
</div>
<a href=#home id=toTop class=scroll style=display:block> <span id=toTopHover style=opacity:1> </span></a>
<script type=text/javascript src=js/jquery-2.1.4.min.js></script>
<script>$(document).ready(function(){$(".dropdown").hover(function(){$(".dropdown-menu",this).stop(true,true).slideDown("fast");$(this).toggleClass("open")},function(){$(".dropdown-menu",this).stop(true,true).slideUp("fast");$(this).toggleClass("open")})});</script>
<script type=text/javascript src=js/jquery.zoomslider.min.js></script>
<script src=js/main.js></script>
<script src=js/simplePlayer.js></script>
<script>$("document").ready(function(){$("#video").simplePlayer()});</script>
<script defer src=js/jquery.flexslider.js></script>
<script type=text/javascript>$(window).load(function(){$(".flexslider").flexslider({animation:"slide",start:function(a){$("body").removeClass("loading")}})});</script>
<script type=text/javascript src=js/move-top.js></script>
<script type=text/javascript src=js/easing.js></script>
<script type=text/javascript>jQuery(document).ready(function(a){a(".scroll").click(function(b){b.preventDefault();a("html,body").animate({scrollTop:a(this.hash).offset().top},900)})});</script>
<script type=text/javascript>$(document).ready(function(){$().UItoTop({easingType:"easeOutQuart"})});</script>
<script src=js/bootstrap.js></script>
</body>
</html>