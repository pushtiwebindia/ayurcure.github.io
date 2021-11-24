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
Dim recaptcha_confirm_text, VarString, objXmlHttp, ResponseString 

' Function to test the recaptcha field
Function recaptcha_confirm(privatekey,rechallenge,reresponse) 
 


VarString = _ 
        "privatekey=" & privatekey & _ 
        "&remoteip=" & Request.ServerVariables("REMOTE_ADDR") & _ 
        "&challenge=" & rechallenge & _ 
        "&response=" & reresponse 

'Test the user input
Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP") 
objXmlHttp.open "POST", "http://api-verify.recaptcha.net/verify", False 
objXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
objXmlHttp.send VarString 

'Read the response
ResponseString = split(objXmlHttp.responseText, vblf) 
Set objXmlHttp = Nothing 

'Analyse the response
If ResponseString(0) = "true" then 
'They answered correctly  so set the confirmation variable to Correct
   recaptcha_confirm_text= "Correct" 
Else 
'They answered incorrectly  so leave the confirmation variable with the value from the second line of the response
   recaptcha_confirm_text = ResponseString(1) 
End If 


End Function 
'Call the Function
recaptcha_confirm privatekey,Request.Form("recaptcha_challenge_field"),Request.Form("recaptcha_response_field")

'Check response is correct and give relevant response
IF recaptcha_confirm_text = "Correct" Then
	Response.write "Thank you " & Request.Form("cname") & " " & Request.Form("email_address") & " for your submission."
	dim mycheckbox, description, cname, companyname, desig, street, cityname, state, Countrycode, zip, phone, mno, fax, email_address, url, inq, hearUs, nm, nm1

'nm = nm & "Sender's Interest In: " & Request.Form("mycheckbox")& chr(13) & chr(10) & vbCrLf & vbCrLf
'nm = nm & "Sender's Comments and Message: " & Request.Form("description") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Name: " & Request.Form("cname") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's E-mail Address: " & Request.Form("email_address") &  chr(13) & chr(10) & vbCrLf & vbCrLf
nm = nm & "Sender's Company Name: " & Request.Form("companyname") &  chr(13) & chr(10) & vbCrLf & vbCrLf

nm = nm & "Sender's Phone No: " & Request.Form("phone") &  chr(13) & chr(10) & vbCrLf & vbCrLf
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
			myMail.Subject="Request A Quote - www.gogobags.in."
			myMail.From="newinquiry@gogobags.in"
			myMail.To="info@gogobags.in"
			myMail.CC="ursgoti@yahoo.com"
			myMail.BCC="sales@pushtiwebindia.com"
			myMail.TextBody=nm
			myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gogobags.in" 
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = "1"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "newinquiry@gogobags.in"
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "Paresh123#1"
myMail.Configuration.Fields.Update

			myMail.Send
			set myMail=nothing 
'nm1 = nm1 & "AUTO-REPLY. " & chr(13) & chr(10) & vbCrLf 

nm1 = nm1 & "AUTO-REPLY. " & chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "Dear " & cname & chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "Thank You for request a quote to gogobags.in. We have received your mail. " & chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "We  will contact you soon. " &  chr(13) & chr(10) & vbCrLf 
nm1 = nm1 & "Feel free to call us on .: +91 9819440707 for prompt reply. " &  chr(13) & chr(10) & vbCrLf & vbCrLf 
nm1 = nm1 & "Thank You with Best Regards, " &  chr(13) & chr(10) & vbCrLf & vbCrLf 

'nm1 = nm1 & "Sincerely Yours, Gaurang Goradiya - Proprietor, Web Developer and search engine submission expert at Pushtiwebindia.com" &  chr(13) & chr(10) & vbCrLf 



Set myMail1=CreateObject("CDO.Message")
			myMail1.Subject="AUTO-REPLY: Thank you for your valued request a quote inquiry to www.gogobags.in. We have received your Inquiry and contact you with in 24 hours."
			myMail1.From="newinquiry@gogobags.in"
			myMail1.To= email_address
			myMail1.BCC="sales@pushtiwebindia.com"
			myMail1.TextBody=nm1
			myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gogobags.in" 
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = "1"
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "newinquiry@gogobags.in"
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "Paresh123#1"
myMail1.Configuration.Fields.Update

			myMail1.Send
			set myMail1=nothing

Else
	Response.write "You entered the wrong words - Press the Back button on your browser to try again."
'incorrect response - put any additional text etc. that you want the user to see here before the response.end statement
Response.End
End If

%> 

</body>
</html>