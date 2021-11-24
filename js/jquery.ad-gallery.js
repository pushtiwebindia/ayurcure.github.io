(function(g){g.fn.adGallery=function(j){var l={loader_image:"loader.gif",start_at_index:0,description_wrapper:false,thumb_opacity:0.7,animate_first_image:false,animation_speed:400,width:false,height:false,display_next_and_prev:true,display_back_and_forward:true,scroll_jump:0,slideshow:{enable:true,autostart:false,speed:5000,start_label:"Start",stop_label:"Stop",stop_on_scroll:true,countdown_prefix:"(",countdown_sufix:")",onStart:false,onStop:false},effect:"slide-hori",enable_keyboard_move:true,cycle:true,callbacks:{init:false,afterImageVisible:false,beforeImageVisible:false}};var k=g.extend(false,l,j);if(j&&j.slideshow){k.slideshow=g.extend(false,l.slideshow,j.slideshow)}if(!k.slideshow.enable){k.slideshow.autostart=false}var i=[];g(this).each(function(){var m=new c(this,k);i[i.length]=m});return i};function f(j,k,l){var m=parseInt(j.css("top"),10);if(k=="left"){var i="-"+this.image_wrapper_height+"px";j.css("top",this.image_wrapper_height+"px")}else{var i=this.image_wrapper_height+"px";j.css("top","-"+this.image_wrapper_height+"px")}if(l){l.css("bottom","-"+l[0].offsetHeight+"px");l.animate({bottom:0},this.settings.animation_speed*2)}if(this.current_description){this.current_description.animate({bottom:"-"+this.current_description[0].offsetHeight+"px"},this.settings.animation_speed*2)}return{old_image:{top:i},new_image:{top:m}}}function e(j,k,m){var l=parseInt(j.css("left"),10);if(k=="left"){var i="-"+this.image_wrapper_width+"px";j.css("left",this.image_wrapper_width+"px")}else{var i=this.image_wrapper_width+"px";j.css("left","-"+this.image_wrapper_width+"px")}if(m){m.css("bottom","-"+m[0].offsetHeight+"px");m.animate({bottom:0},this.settings.animation_speed*2)}if(this.current_description){this.current_description.animate({bottom:"-"+this.current_description[0].offsetHeight+"px"},this.settings.animation_speed*2)}return{old_image:{left:i},new_image:{left:l}}}function d(k,l,n){var j=k.width();var i=k.height();var m=parseInt(k.css("left"),10);var o=parseInt(k.css("top"),10);k.css({width:0,height:0,top:this.image_wrapper_height/2,left:this.image_wrapper_width/2});return{old_image:{width:0,height:0,top:this.image_wrapper_height/2,left:this.image_wrapper_width/2},new_image:{width:j,height:i,top:o,left:m}}}function b(i,j,k){i.css("opacity",0);return{old_image:{opacity:0},new_image:{opacity:1}}}function h(i,j,k){i.css("opacity",0);return{old_image:{opacity:0},new_image:{opacity:1},speed:0}}function c(j,i){this.init(j,i)}c.prototype={wrapper:false,image_wrapper:false,gallery_info:false,nav:false,loader:false,preloads:false,thumbs_wrapper:false,scroll_back:false,scroll_forward:false,next_link:false,prev_link:false,slideshow:false,image_wrapper_width:0,image_wrapper_height:0,current_index:0,current_image:false,current_description:false,nav_display_width:0,settings:false,images:false,in_transition:false,animations:false,init:function(m,l){var k=this;this.wrapper=g(m);this.settings=l;this.setupElements();this.setupAnimations();if(this.settings.width){this.image_wrapper_width=this.settings.width;this.image_wrapper.width(this.settings.width);this.wrapper.width(this.settings.width)}else{this.image_wrapper_width=this.image_wrapper.width()}if(this.settings.height){this.image_wrapper_height=this.settings.height;this.image_wrapper.height(this.settings.height)}else{this.image_wrapper_height=this.image_wrapper.height()}this.nav_display_width=this.nav.width();this.current_index=0;this.current_image=false;this.current_description=false;this.in_transition=false;this.findImages();if(this.settings.display_next_and_prev){this.initNextAndPrev()}var i=function(n){return k.nextImage(n)};this.slideshow=new a(i,this.settings.slideshow);this.controls.append(this.slideshow.create());if(this.settings.slideshow.enable){this.slideshow.enable()}else{this.slideshow.disable()}if(this.settings.display_back_and_forward){this.initBackAndForward()}if(this.settings.enable_keyboard_move){this.initKeyEvents()}var j=parseInt(this.settings.start_at_index,10);if(window.location.hash&&window.location.hash.indexOf("#ad-image")===0){j=window.location.hash.replace(/[^0-9]+/g,"");if((j*1)!=j){j=this.settings.start_at_index}}this.loading(true);this.showImage(j,function(){if(k.settings.slideshow.autostart){k.preloadImage(j+1);k.slideshow.start()}});this.fireCallback(this.settings.callbacks.init)},setupAnimations:function(){this.animations={"slide-vert":f,"slide-hori":e,resize:d,fade:b,none:h}},setupElements:function(){this.controls=this.wrapper.find(".ad-controls");this.gallery_info=g('<p class="ad-info"></p>');this.controls.append(this.gallery_info);this.image_wrapper=this.wrapper.find(".ad-image-wrapper");this.image_wrapper.empty();this.nav=this.wrapper.find(".ad-nav");this.thumbs_wrapper=this.nav.find(".ad-thumbs");this.preloads=g('<div class="ad-preloads"></div>');this.loader=g('<img class="ad-loader" src="'+this.settings.loader_image+'">');this.image_wrapper.append(this.loader);this.loader.hide();g(document.body).append(this.preloads)},loading:function(i){if(i){this.loader.show()}else{this.loader.hide()}},addAnimation:function(i,j){if(g.isFunction(j)){this.animations[i]=j}},findImages:function(){var n=this;this.images=[];var m=0;var l=0;var k=this.thumbs_wrapper.find("a");var j=k.length;if(this.settings.thumb_opacity<1){k.find("img").css("opacity",this.settings.thumb_opacity)}k.each(function(p){var r=g(this);var q=r.attr("href");var o=r.find("img");if(!n.isImageLoaded(o[0])){o.load(function(){m+=this.parentNode.parentNode.offsetWidth;l++})}else{m+=o[0].parentNode.parentNode.offsetWidth;l++}r.addClass("ad-thumb"+p);r.click(function(){n.showImage(p);n.slideshow.stop();return false}).hover(function(){if(!g(this).is(".ad-active")&&n.settings.thumb_opacity<1){g(this).find("img").fadeTo(300,1)}n.preloadImage(p)},function(){if(!g(this).is(".ad-active")&&n.settings.thumb_opacity<1){g(this).find("img").fadeTo(300,n.settings.thumb_opacity)}});var r=false;if(o.data("ad-link")){r=o.data("ad-link")}else{if(o.attr("longdesc")&&o.attr("longdesc").length){r=o.attr("longdesc")}}var t=false;if(o.data("ad-desc")){t=o.data("ad-desc")}else{if(o.attr("alt")&&o.attr("alt").length){t=o.attr("alt")}}var s=false;if(o.data("ad-title")){s=o.data("ad-title")}else{if(o.attr("title")&&o.attr("title").length){s=o.attr("title")}}n.images[p]={thumb:o.attr("src"),image:q,error:false,preloaded:false,desc:t,title:s,size:false,link:r}});var i=setInterval(function(){if(j==l){m-=100;var q=n.nav.find(".ad-thumb-list");q.css("width",m+"px");var p=1;var o=q.height();while(p<201){q.css("width",(m+p)+"px");if(o!=q.height()){break}o=q.height();p++}clearInterval(i)}},100)},initKeyEvents:function(){var i=this;g(document).keydown(function(j){if(j.keyCode==39){i.nextImage();i.slideshow.stop()}else{if(j.keyCode==37){i.prevImage();i.slideshow.stop()}}})},initNextAndPrev:function(){this.next_link=g('<div class="ad-next"><div class="ad-next-image"></div></div>');this.prev_link=g('<div class="ad-prev"><div class="ad-prev-image"></div></div>');this.image_wrapper.append(this.next_link);this.image_wrapper.append(this.prev_link);var i=this;this.prev_link.add(this.next_link).mouseover(function(j){g(this).css("height",i.image_wrapper_height);g(this).find("div").show()}).mouseout(function(j){g(this).find("div").hide()}).click(function(){if(g(this).is(".ad-next")){i.nextImage();i.slideshow.stop()}else{i.prevImage();i.slideshow.stop()}}).find("div").css("opacity",0.7)},initBackAndForward:function(){var k=this;this.scroll_forward=g('<div class="ad-forward"></div>');this.scroll_back=g('<div class="ad-back"></div>');this.nav.append(this.scroll_forward);this.nav.prepend(this.scroll_back);var j=0;var i=false;g(this.scroll_back).add(this.scroll_forward).click(function(){var l=k.nav_display_width-50;if(k.settings.scroll_jump>0){var l=k.settings.scroll_jump}if(g(this).is(".ad-forward")){var m=k.thumbs_wrapper.scrollLeft()+l}else{var m=k.thumbs_wrapper.scrollLeft()-l}if(k.settings.slideshow.stop_on_scroll){k.slideshow.stop()}k.thumbs_wrapper.animate({scrollLeft:m+"px"});return false}).css("opacity",0.6).hover(function(){var l="left";if(g(this).is(".ad-forward")){l="right"}i=setInterval(function(){j++;if(j>30&&k.settings.slideshow.stop_on_scroll){k.slideshow.stop()}var m=k.thumbs_wrapper.scrollLeft()+1;if(l=="left"){m=k.thumbs_wrapper.scrollLeft()-1}k.thumbs_wrapper.scrollLeft(m)},10);g(this).css("opacity",1)},function(){j=0;clearInterval(i);g(this).css("opacity",0.6)})},_afterShow:function(){this.gallery_info.html((this.current_index+1)+" / "+this.images.length);if(!this.settings.cycle){this.prev_link.show().css("height",this.image_wrapper_height);this.next_link.show().css("height",this.image_wrapper_height);if(this.current_index==(this.images.length-1)){this.next_link.hide()}if(this.current_index==0){this.prev_link.hide()}}this.fireCallback(this.settings.callbacks.afterImageVisible)},_getContainedImageSize:function(j,i){if(i>this.image_wrapper_height){var k=j/i;i=this.image_wrapper_height;j=this.image_wrapper_height*k}if(j>this.image_wrapper_width){var k=i/j;j=this.image_wrapper_width;i=this.image_wrapper_width*k}return{width:j,height:i}},_centerImage:function(l,j,i){l.css("top","0px");if(i<this.image_wrapper_height){var k=this.image_wrapper_height-i;l.css("top",(k/2)+"px")}l.css("left","0px");if(j<this.image_wrapper_width){var k=this.image_wrapper_width-j;l.css("left",(k/2)+"px")}},_getDescription:function(i){var k=false;if(i.desc.length||i.title.length){var j="";if(i.title.length){j='<strong class="ad-description-title">'+i.title+"</strong>"}var k="";if(i.desc.length){k="<span>"+i.desc+"</span>"}k=g('<p class="ad-image-description">'+j+k+"</p>")}return k},showImage:function(i,l){if(this.images[i]&&!this.in_transition){var j=this;var k=this.images[i];this.in_transition=true;if(!k.preloaded){this.loading(true);this.preloadImage(i,function(){j.loading(false);j._showWhenLoaded(i,l)})}else{this._showWhenLoaded(i,l)}}},_showWhenLoaded:function(q,w){if(this.images[q]){var j=this;var l=this.images[q];var m=g(document.createElement("div")).addClass("ad-image");var o=g(new Image()).attr("src",l.image);if(l.link){var t=g('<a href="'+l.link+'" target="_blank"></a>');t.append(o);m.append(t)}else{m.append(o)}this.image_wrapper.prepend(m);var x=this._getContainedImageSize(l.size.width,l.size.height);o.attr("width",x.width);o.attr("height",x.height);m.css({width:x.width+"px",height:x.height+"px"});this._centerImage(m,x.width,x.height);var p=this._getDescription(l,m);if(p){if(!this.settings.description_wrapper){m.append(p);var i=x.width-parseInt(p.css("padding-left"),10)-parseInt(p.css("padding-right"),10);p.css("width",i+"px")}else{this.settings.description_wrapper.append(p)}}this.highLightThumb(this.nav.find(".ad-thumb"+q));var u="right";if(this.current_index<q){u="left"}this.fireCallback(this.settings.callbacks.beforeImageVisible);if(this.current_image||this.settings.animate_first_image){var v=this.settings.animation_speed;var s="swing";var n=this.animations[this.settings.effect].call(this,m,u,p);if(typeof n.speed!="undefined"){v=n.speed}if(typeof n.easing!="undefined"){s=n.easing}if(this.current_image){var k=this.current_image;var r=this.current_description;k.animate(n.old_image,v,s,function(){k.remove();if(r){r.remove()}})}m.animate(n.new_image,v,s,function(){j.current_index=q;j.current_image=m;j.current_description=p;j.in_transition=false;j._afterShow();j.fireCallback(w)})}else{this.current_index=q;this.current_image=m;j.current_description=p;this.in_transition=false;j._afterShow();this.fireCallback(w)}}},nextIndex:function(){if(this.current_index==(this.images.length-1)){if(!this.settings.cycle){return false}var i=0}else{var i=this.current_index+1}return i},nextImage:function(j){var i=this.nextIndex();if(i===false){return false}this.preloadImage(i+1);this.showImage(i,j);return true},prevIndex:function(){if(this.current_index==0){if(!this.settings.cycle){return false}var i=this.images.length-1}else{var i=this.current_index-1}return i},prevImage:function(j){var i=this.prevIndex();if(i===false){return false}this.preloadImage(i-1);this.showImage(i,j);return true},preloadAll:function(){var k=this;var j=0;function l(){if(j<k.images.length){j++;k.preloadImage(j,l)}}k.preloadImage(j,l)},preloadImage:function(j,m){if(this.images[j]){var l=this.images[j];if(!this.images[j].preloaded){var i=g(new Image());i.attr("src",l.image);if(!this.isImageLoaded(i[0])){this.preloads.append(i);var k=this;i.load(function(){l.preloaded=true;l.size={width:this.width,height:this.height};k.fireCallback(m)}).error(function(){l.error=true;l.preloaded=false;l.size=false})}else{l.preloaded=true;l.size={width:i[0].width,height:i[0].height};this.fireCallback(m)}}else{this.fireCallback(m)}}},isImageLoaded:function(i){if(typeof i.complete!="undefined"&&!i.complete){return false}if(typeof i.naturalWidth!="undefined"&&i.naturalWidth==0){return false}return true},highLightThumb:function(i){this.thumbs_wrapper.find(".ad-active").removeClass("ad-active");i.addClass("ad-active");if(this.settings.thumb_opacity<1){this.thumbs_wrapper.find("a:not(.ad-active) img").fadeTo(300,this.settings.thumb_opacity);i.find("img").fadeTo(300,1)}var j=i[0].parentNode.offsetLeft;j-=(this.nav_display_width/2)-(i[0].offsetWidth/2);this.thumbs_wrapper.animate({scrollLeft:j+"px"})},fireCallback:function(i){if(g.isFunction(i)){i.call(this)}}};function a(i,j){this.init(i,j)}a.prototype={start_link:false,stop_link:false,countdown:false,controls:false,settings:false,nextimage_callback:false,enabled:false,running:false,countdown_interval:false,init:function(i,k){var j=this;this.nextimage_callback=i;this.settings=k},create:function(){this.start_link=g('<span class="ad-slideshow-start">'+this.settings.start_label+"</span>");this.stop_link=g('<span class="ad-slideshow-stop">'+this.settings.stop_label+"</span>");this.countdown=g('<span class="ad-slideshow-countdown"></span>');this.controls=g('<div class="ad-slideshow-controls"></div>');this.controls.append(this.start_link).append(this.stop_link).append(this.countdown);this.countdown.hide();var i=this;this.start_link.click(function(){i.start()});this.stop_link.click(function(){i.stop()});g(document).keydown(function(j){if(j.keyCode==83){if(i.running){i.stop()}else{i.start()}}});return this.controls},disable:function(){this.enabled=false;this.stop();this.controls.hide()},enable:function(){this.enabled=true;this.controls.show()},toggle:function(){if(this.enabled){this.disable()}else{this.enable()}},start:function(){if(this.running||!this.enabled){return false}var i=this;this.running=true;this.controls.addClass("ad-slideshow-running");this._next();this.fireCallback(this.settings.onStart);return true},stop:function(){if(!this.running){return false}this.running=false;this.countdown.hide();this.controls.removeClass("ad-slideshow-running");clearInterval(this.countdown_interval);this.fireCallback(this.settings.onStop);return true},_next:function(){var k=this;var l=this.settings.countdown_prefix;var j=this.settings.countdown_sufix;clearInterval(k.countdown_interval);this.countdown.show().html(l+(this.settings.speed/1000)+j);var i=0;this.countdown_interval=setInterval(function(){i+=1000;if(i>=k.settings.speed){var n=function(){if(k.running){k._next()}i=0};if(!k.nextimage_callback(n)){k.stop()}i=0}var m=parseInt(k.countdown.text().replace(/[^0-9]/g,""),10);m--;if(m>0){k.countdown.html(l+m+j)}},1000)},fireCallback:function(i){if(g.isFunction(i)){i.call(this)}}}})(jQuery);
