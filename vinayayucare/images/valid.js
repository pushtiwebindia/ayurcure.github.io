// JavaScript Document
function checkfield(loginform)
{
  
	ok=true
	//var chek=document.getElementById("validatecode").value;
	//var moblilenumber=document.getElementById("mobile").value;
	if(loginform.txtName.value=="")
	{
		alert("Please Enter Your Name.")
		loginform.txtName.focus();
		ok=false
	}
		
		else if(loginform.txtMobileNo.value=="")
		{
		alert("Please Enter Valid Mobile Number ")
		loginform.txtMobileNo.focus();
		ok=false
		}
		
		else if((loginform.txtEmail.value.indexOf('@') == -1) || (loginform.txtEmail.value.indexOf('.') == -1))
	{
	 	alert("Please Enter Valid Email Address");
	 	loginform.txtEmail.value='';
		loginform.txtEmail.focus();
		ok=false
	}
		
		
		
		else if(loginform.txtFrom.value=="")
		{
		alert("Please Enter From ")
		loginform.txtFrom.focus();
		ok=false
		}	
		
	else if(loginform.txtTo.value=="")
		{
		alert("Please Enter To ")
		loginform.txtTo.focus();
		ok=false
		}	
	return ok
}
