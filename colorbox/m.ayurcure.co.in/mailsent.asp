<%@ LANGUAGE="VBSCRIPT" %>
<!-- #include file="keyvals.asp"-->
<html>
	<head>
<!--- Sample ASP 3.0 scripts to integrate reCaptcha  from reCaptcha.net into form submission.-->
	<!--- Created by RichoSoft - 2009 - www.richosoft.co.uk -->
	<!--You need three pages:--->
	<!---recaptcha1.asp (to generate the reCaptcha image on the form) --->
	<!---recaptcha2.asp (to validate the reCaptcha and process the form) --->
	<!---keyvals.asp (to enter your public and private keys into the forms ) --->
	<!---You are free to modify these pages as required to fit into your site(s) - but requested to leave the references to RichoSoft in tact--->
	<!-- It would also be nice if you could put a link to RichoSoft on your web site--->
	</head>
<body>

<% 
	Response.write "Thank you " & Request.Form("cname") & " " & Request.Form("email_address") & " for your submission."
	dim mycheckbox, description, cname, lname, companyname, desig, street, city, cityname, state, addr, Countrycode, zip, phone, mno, fax, email_address, url, inq, hearUs, nm, nm1

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
			'Response.write "Thank you " & Request.Form("cname") & " " & Request.Form("email_address") & " for your submission."
                         Response.Redirect "https://m.ayurcure.co.in/thankyou.asp"

%> 

</body>
</html>