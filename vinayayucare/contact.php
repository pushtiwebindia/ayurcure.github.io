<?php
$First_Name = $_POST['First_Name'];
$Last_Name = $_POST['Last_Name'];
$City = $_POST['City'];
$Email = $_POST['Email'];
$address =$_POST['Address'];
$Telephone = $_POST['Telephone'];
$Requirements = $_POST['Requirements'];
$todayis = date("l, F j, Y, g:i a") ;
$subject = "Enquiry From Website Ayurcure"; 
$notes = stripcslashes($notes); 
$message = " $todayis [EST] \n


First Name: $First_Name \n
Last Name :$Last_Name \n
City: $City \n
Address: $address \n
Telephone: $Telephone \n
Requirements : $Requirements \n
From: $First_Name ($Email)\n

";

$from = "From: $Email\r\n";


mail("ayurcr@gmail.com,hemant@hemworld.in", $subject, $message, $from);

?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ayurcure, ayurvedic clinics in mumbai, ayurveda treatment in Mumbai, ayurvedic treatment for skin diseases, Slimming Centre, Bridal Package, Facials, Hair Treatments, Ayurvedic Treatment for AIDS, Diabetes, cancer, Mumbai</title>
<meta name="keywords" content="Ayurcure, ayurvedic clinics in mumbai, ayurvedic treatment in mumbai, ayurvedic panchakarma treatment in mumbai, ayurvedic doctor in Mumbai, ayurvedic cancer treatment in mumbai, ayurvedic treatment hiv aids, ayurvedic diabetes treatment, Bridal Package, Facials, Hair Treatments, Ayurvedic Treatment for AIDS, Diabetes, cancer, Mumbai" />
<meta name="description" content="Ayurcure, ayurvedic clinics in mumbai, ayurvedic treatment in mumbai, ayurvedic panchakarma treatment in mumbai, ayurvedic doctor in Mumbai, ayurvedic cancer treatment in mumbai, ayurvedic treatment hiv aids, ayurvedic diabetes treatment, Bridal Package, Facials, Hair Treatments, Ayurvedic Treatment for AIDS, Diabetes, cancer, Mumbai " />

<meta name="robots" content="index,follow">
<meta name="revisit-after" content="3days" />
<Meta Name="Author" Content="Hemworld">

<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style2.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/style2.css" type="text/css" media="screen" />
     <script type="text/javascript" src="js/jquery-1-4-2-min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    <script src="js/jquery.tabSlideOut.v1.3.js"></script>         
         <script>
         $(function(){
             $('.slide-out-div').tabSlideOut({
                 tabHandle: '.handle',                              //class of the element that will be your tab
                 pathToTabImage: 'images/getintouch.jpg',          //path to the image for the tab (optionaly can be set using css)
                 imageHeight: '150px',                               //height of tab image
                 imageWidth: '40px',                               //width of tab image    
                 tabLocation: 'right',                               //side of screen where tab lives, top, right, bottom, or left
                 speed: 150,                                        //speed of animation
                 action: 'click',                                   //options: 'click' or 'hover', action to trigger animation
                 topPos: '47%',                                   //position from the top
                 fixedPosition: false                               //options: true makes it stick(fixed position) on scroll
             });
         });

         </script>
<script type="text/javascript">

 var _gaq = _gaq || [];
 _gaq.push(['_setAccount', 'UA-16811372-20']);
 _gaq.push(['_trackPageview']);

 (function() {
   var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
   var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
 })();

</script>
<script type="text/javascript">
<!--
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('The following error(s) occurred:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
//-->
</script>

    <script type="text/javascript" src="Scripts/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
<link rel="shortcut icon" href="images/favicon.ico" >
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <style type="text/css">
<!--
.style11 {color: #000000}
.style12 {
	font-size: 24px;
	font-weight: bold;
}
.style13 {
	font-size: 16
}
-->
    </style>
    <script type="text/javascript">
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}
//-->
</script>

</head>
<body>

<div id="wrapper">
	<div id="header"classs="header">
    
    	<div id="site_title" >
            <!--<a href="#" target="_parent" title="IPBA"></a>-->
          <a href="#" target="_parent" title="AYURCURE"></a>
            
              
        </div> <!-- end of site_title -->
 <div class="container" id="main" role="main">
            <ul class="menu">
                <li><a href="index.html" class="style11" >Home</a></li>
              <li><a href="aboutus.html">ABOUT US</a>           
              </li>
                <li ><a href="">Panchakarma</a>
                   <!-- <ul class="submenu">
                        <li><a href="">Panchakarma1</a></li>
                        <li><a href="">Panchakarma2</a></li>
                        <li><a href="">Panchakarma3</a></li>
                        
                    </ul>-->
                </li>
                <li><a href="treatment.html">Treatment</a>  
               <!-- <ul class="submenu">
                        <li><a href="">Treatment1</a></li>
                        <li><a href="">Treatment2</a></li>
                        <li><a href="">Treatment3</a></li>
                        
                  </ul>-->

                
                
                
                <li><a href="service.html">Service </a>
                    <!--<ul class="submenu">
                        <li><a href="#">RECRUITMENT</a></li>
                        <li><a href="#">Corporate Training</a></li>
                        <li><a href="#">Finishing School</a></li>
                        
                    </ul>-->
                </li>
              <li><a href="news.html">News</a></li>
                <li><a href="contactus.html">Contact </a></li>
            </ul>
      </div>
 <!-- end of templatemo_menu -->
    	<div class="cleaner"></div>
    </div> <!-- end of header -->
    
    <div id="main">
   <!-- <div id="slider" class="nivoSlider"> 
                <a href=""><img src="images/baner1.jpg" alt="" width="" /></a>
                <a href=""><img src="images/banner2.jpg" alt="" /></a>
                <a href=""><img src="images/banner1.jpg" alt="" /></a>
               <a href=""> <img src="images/banner2.jpg" alt="" /></a>
               <a href=""> <img src="images/banner1.jpg" alt="" /></a>  </div>-->
        
    	<div class="cont14">
      <div class="content_box">
            <table width="949" height="218" >
            <tr>
            <td  width="948%">
           
            <div class="image1">
            <img src="images/contact.jpg" alt="" width="950" height="306" /> </div> </td>
          </tr>
           </table>
            
     
       </div>       
              
              
            
            
          </div>
        
        <div class="cleaner_h10"></div>
       
       
      
    

    </div> <!-- end of content -->
<div>
    <center>  <div class="content_section">
        
        <h2> Thank you for your Enquiry.</h2>
        
        
        
      </div></center></div>
      
      
  <table align="center"><tr> <td><div id="templatmeo_sidebar" style="width:360px;">
    
    	<center><div class="sidebar_section">
       		
            <h2> Contact Us</h2>
       	
       		<div class="sidebar_section_content">
               
       
    
    
            </div>
             
        </div></center>
    <center>	<div class="sidebar_section">
    	  
    	  
<p class="style12">AyurCure,</p> 
<p class="style13"> Wallbhatt Road,<br />
 Goregaon (e)  Mumbai 92.</p>
 <p class="style13"><strong>Phone:  9892740372 </strong></p> 

<strong>Email:</strong> <a class="style11" mailto:ayurcr@gmail.com>ayurcr@gmail.com</a>
    	  
    	  
    	  
  	  </div>
    </center></div></td></tr></table>
<div id="footer"align="center">
    
    <tr align="center">
                      <a href="http://www.hemworld.in" target="_blank"style="float:right"><strong><span class="style11">@Copyright 2014 Ayurcure |Powered by  Hemworld</span>.</strong></a>    </tr>
    </table>
   	  </div>


	</div> <!-- end of sidebar -->
    
  	<div class="cleaner"></div>    

</div> <div id="templatemo_content_wrapper_bottom"></div> <!-- end of content_wrapper -->
<!-- end of templatemo_footer -->


</body>
</html>