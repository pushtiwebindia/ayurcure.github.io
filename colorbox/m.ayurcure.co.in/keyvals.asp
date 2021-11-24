<%
<!--- Sample ASP 3.0 scripts to integrate reCaptcha from reCaptcha.net into form submission.-->
	<!--- Created by RichoSoft  - 2009 - www.richosoft.co.uk -->
	<!--You need three pages:--->
	<!---recaptcha1.asp (to generate the reCaptcha image on the form) --->
	<!---recaptcha2.asp (to validate the reCaptcha and process the form) --->
	<!---keyvals.asp (to enter your public and private keys into the forms ) --->
	<!---You are free to modify these pages as required to fit into your site(s) - but requested to leave the references to RichoSoft in tact--->
	<!-- It would also be nice if you could put a link to RichoSoft on your web site--->
Dim publickey,privatekey

<!---This is where you enter your Private and Public Keys supplied by reCaptcha--->
publickey="6LehjE4UAAAAAF0AVYTRp3VQ-Dq6V1V9YtOyZv6z"
privatekey="6LehjE4UAAAAAB2Ej3C8KoZAGxy6dTVmXk9D7dIR" 
%>