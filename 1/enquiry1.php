<?php
$First_Name = $_POST['First_Name'];
$Last_Name = $_POST['Last_Name'];
$City = $_POST['City'];
$email = $_POST['Email'];
$address =$_POST['Address'];
$country = $_POST['country'];
$State = $_POST['State'];
$Telephone = $_POST['Telephone'];
$Requirements = $_POST['Requirements'];
$todayis = date("l, F j, Y, g:i a") ;
$subject = "Enquery From Website IPBA"; 
$notes = stripcslashes($notes); 
$message = " $todayis [EST] \n
First Name: $First_Name \n
Last Name :$Last_Name \n
City: $City \n
Address: $address \n
Country: $country \n
State : $State \n
Telephone: $Telephone \n
Requirements : $Requirements \n
From: $Person_Name ($email)\n

";

$from = "From: $email\r\n";


mail("info@ipba.in", $subject, $message, $from);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>bartending courses in pune,bartending school in pune,bartenders in mumbai,ipba,Bartending Academy in pune, IPBA, Hire a Bartender, How to learn a bartending, Join Bartending courses,Indian professional bartending academy, Pune, Mumbai, India</title>
  <meta name="robots" content="index, follow" />
  <meta name="keywords" content="bartending courses in pune,bartending school in pune,bartenders in mumbai,ipba,Bartending Academy in pune, IPBA, Hire a Bartender, How to learn a bartending, Join Bartending courses,Indian professional bartending academy, Pune, Mumbai, India" />
  <meta name="description" content="IPBA is an opportunity for the Hospitality industry find creative bartender of the talent. They also provide opportunities for skilled and professional bartender." />
<link href="style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/style2.css" type="text/css" media="screen" />

    <script type="text/javascript" src="Scripts/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    
    
</head>
<body>

<div id="wrapper">
	<div id="header">
    
    	<div id="site_title">
            <a href="http://www.ipba.in" target="_parent" title="IPBA"></a>
        </div> <!-- end of site_title -->
        <div id="menu">
            <ul>
              <li><a href="index.html">Home</a> </li>
<li> <a href="course.html">Courses</a></li>
<li><a href="instructor.html">Faculty</a></li>
<li><a href="placements.html">Placement </a> </li>
<li><a href="events.html">Events</a></li>
<li><a href="video.html">Videos</a> </li>
<li><a href="gallery.html">Gallery</a></li>
<li><a href="enquiry.html" class="current">Enquiry</a></li>
<li><a href="contact.html">Contact</a></li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
    	<div class="cleaner"></div>
    </div> <!-- end of header -->
    
    <div id="main">
    <div id="slider" class="nivoSlider">
                <img src="images/b1.jpg" alt="" />
                <img src="images/banner3.jpg" alt="" />
                <img src="images/b2.jpg" alt="" />
                <img src="images/b4.jpg" alt="" />
                <img src="images/b5.jpg" alt="" />
             </div>
    
    	
        <div id="content">
        	
            <div class="content_box">
                <div class="col_w280 float_l">
                    <div class="title t_one">Advance Bartending Course</div>
                  <div class="image_wrapper_02"><span></span><img src="images/wine.jpg" alt="Image 2" width="224" /></div>
                  Introduction of bar &amp; beverage industry<br />
                  <a href="advance.html">&bull; Read More</a>
                </div>
                
                <div class="col_w280 float_l">
                    <div class="title t_two">Flair Bartending Course</div>
                     <div class="image_wrapper_02"><span></span><img src="images/flair.jpg" alt="Flair Bartending Course" width="224" /></div>
                  Working flair, Exhibition flair<br />
                  <a href="flair.html">&bull; Read More</a>
                </div>
                
                <div class="col_w280 float_l">
                    <div class="title t_two">Wine Course</div>
                     <div class="image_wrapper_02"><span></span><img src="images/advanced.jpg" alt="Wine course" width="224" height="150" /></div>
                   How is wine produced?<br />
                   <a href="wine.html">&bull; Read More</a>
                </div>
                
                <div class="col_w280 float_r col_w280_last">
                    <div class="title t_three">Hospitality Financial Management</div>
                     <div class="image_wrapper_02"><span></span><img src="images/barmgtt.jpg" width="224" alt="Image 4" /></div>
                    food and beverage management<br />
                   <a href="management.html">&bull; Read More</a>
              </div>
                <div class="cleaner"></div>
           </div> 
           <div class="content_box">
           		<div class="col_w580 float_l">
                	
                    <div id="latest_news">
                    	<div class="news_box">                       	
<h3>Thank You For Your Enquiry.</h3>
<p></p>


                        </div>
                        
                    </div>
            	</div>
               <div class="col_w360 float_r">
                    <ul class="gallery">
                        <li><a href="cruiseline.html"><img src="images/cruise.png" alt="Cruiseline" /></a></li>
                        <li><a href="#"><img src="images/branch.png" alt="Bartending" /></a></li>
                     </ul>
                </div>
                <div class="cleaner"></div>
           </div> <!-- end of a content box -->
        </div> <!-- end of content -->
        <div id="footer">
    <div style="float:left;"><a href="http://mail.google.com/a/ipba.in" target="_blank">Login</a></div>
        	Copyright © Indian professional bartending academy |
Site Designed by <a href="http://www.hemworld.in" target="_blank"><strong>hemworld.</strong></a>
    
    	</div> <!-- end of templatemo_footer -->
    </div> <!-- end of main -->
</div> <!-- end of wrapper -->

</body>
</html>