var ddsitelogo={setting:{orientation:4,visibleduration:0,fadeduration:[1000,500]},offsets:{x:10,y:10},logoHTML:'<a href="https://bit.ly/2KFOVoG" title="Send Enquiry"><img src="https://ayurcure.co.in/images/enquiryonline.png"  border:0" /></a>',coord:{},keepfixed:function(){if(!this.cssfixedsupport){var d=jQuery(window);var b=/^[13]$/.test(this.setting.orientation);var c=/^[12]$/.test(this.setting.orientation);var a=d.scrollLeft()+(b?this.offsets.x:d.width()-this.$control.width()-this.offsets.x);var e=d.scrollTop()+(c?this.offsets.y:d.height()-this.$control.height()-this.offsets.y);this.$control.css({left:a+"px",top:e+"px"})}},showlogo:function(){var a=ddsitelogo;this.$control.animate({opacity:1},this.setting.fadeduration[0]);if(this.setting.visibleduration>0){setTimeout(function(){a.$control.stop().animate({opacity:0},a.setting.fadeduration[1],function(){jQuery(window).unbind("scroll.fixed resize.fixed")})},this.setting.visibleduration+this.setting.fadeduration[0])}},init:function(){jQuery(document).ready(function(c){var a=ddsitelogo;var b=document.all;a.cssfixedsupport=!b||b&&document.compatMode=="CSS1Compat"&&window.XMLHttpRequest;if(a.cssfixedsupport){a.coord[(/^[13]$/.test(a.setting.orientation))?"left":"right"]=a.offsets.x;a.coord[(/^[12]$/.test(a.setting.orientation))?"top":"bottom"]=a.offsets.y}a.$control=c('<div id="mysitelogo">'+a.logoHTML+"</div>").css({position:a.cssfixedsupport?"fixed":"absolute",opacity:0,zIndex:1000}).css(a.coord).appendTo("body");if(document.all&&!window.XMLHttpRequest&&a.$control.text()!=""){a.$control.css({width:a.$control.width()})}a.keepfixed();a.showlogo();c(window).bind("scroll.fixed resize.fixed",function(){a.keepfixed()})})}};ddsitelogo.init();