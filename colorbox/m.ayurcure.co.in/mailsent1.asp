<%
 recaptcha_challenge_field  = Request("recaptcha_challenge_field")
 recaptcha_response_field   = Request("recaptcha_response_field")
 recaptcha_public_key       = "6LfnXkwUAAAAAOi-Uzu-8LpFBOu7cSb2fX9jdsHC" ' your public key
 recaptcha_private_key      = "6LfnXkwUAAAAAKDyeOxoJYeuOTWju-Uo1a5ZVYmq" ' your private key
 ' returns the HTML for the widget
 function recaptcha_challenge_writer()
 recaptcha_challenge_writer = _
 "<script type=""text/javascript"">" & _
 "var RecaptchaOptions = {" & _
 "   theme : 'red'," & _
 "   tabindex : 0" & _
 "};" & _
 "</script>" & _
 "<script type=""text/javascript"" src=""http://www.google.com/recaptcha/api/challenge?k=" & recaptcha_public_key & """></script>" & _
 "<noscript>" & _
   "<iframe src=""http://www.google.com/recaptcha/api/noscript?k=" & recaptcha_public_key & """ frameborder=""1""></iframe><br>" & _
     "<textarea name=""recaptcha_challenge_field"" rows=""3""cols=""40""></textarea>" & _
     "<input type=""hidden"" name=""recaptcha_response_field""value=""manual_challenge"">" & _
 "</noscript>"
 end function
 ' returns "" if correct, otherwise it returns the error response
 function recaptcha_confirm(rechallenge,reresponse)
 Dim VarString
 VarString = _
         "privatekey=" & recaptcha_private_key & _
         "&remoteip=" & Request.ServerVariables("REMOTE_ADDR") & _
         "&challenge=" & rechallenge & _
         "&response=" & reresponse
 Dim objXmlHttp
 Set objXmlHttp = Server.CreateObject("Msxml2.ServerXMLHTTP")
 objXmlHttp.open "POST", "http://www.google.com/recaptcha/api/verify", False
 objXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
 objXmlHttp.send VarString
 Dim ResponseString
 ResponseString = split(objXmlHttp.responseText, vblf)
 Set objXmlHttp = Nothing
 if ResponseString(0) = "true" then
   'They answered correctly
    recaptcha_confirm = ""
 else
   'They answered incorrectly
    recaptcha_confirm = ResponseString(1)
 end if
 end function

 server_response = ""
 newCaptcha = True
 if (recaptcha_challenge_field <> "" or recaptcha_response_field <> "") then
   server_response = recaptcha_confirm(recaptcha_challenge_field, recaptcha_response_field)
   newCaptcha = False  
 end if

 %>

 <html>
 <body>
 <% if server_response <> "" or newCaptcha then %>
   <% if newCaptcha = False then %>
     <!-- An error occurred -->
     Wrong!
   <% end if %>
   <!-- Generating the form -->
   <form action="form.asp" method="post">
     <%=recaptcha_challenge_writer()%>
   </form>
 <% else %>
   <!-- The solution was correct -->
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
			myMail.To="sales@ayurcure.co.in"
			myMail.CC="ayurcr@gmail.com"
			myMail.BCC="sales@pushtiwebindia.com"
			myMail.TextBody=nm
			myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
myMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.ayurcure.co.in" 
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
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.ayurcure.co.in" 
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 587
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = "1"
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "inquiry@ayurcure.co.in"
myMail1.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "Inquiry123#1"
myMail1.Configuration.Fields.Update

			myMail1.Send
			set myMail1=nothing
 <%end if%>
 </body>
 </html> 




