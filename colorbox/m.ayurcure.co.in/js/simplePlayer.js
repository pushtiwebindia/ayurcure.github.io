var YTdeferred=jQuery.Deferred();window.onYouTubeIframeAPIReady=function(){YTdeferred.resolve(window.YT)};(function(a){a.ajaxSetup({cache:true});a.getScript("https://www.youtube.com/iframe_api").done(function(b,c){});a.fn.simplePlayer=function(){var b=a(this);var e=a("<div />",{id:"play"}).hide();var d={autoplay:1,autohide:1,border:0,wmode:"opaque",enablejsapi:1,modestbranding:1,version:3,hl:"en_US",rel:0,showinfo:0,hd:1,iv_load_policy:3};YTdeferred.done(function(g){e.appendTo(b).fadeIn("slow")});function c(g){if(g.data==YT.PlayerState.ENDED){e.fadeIn(500)}}function f(g){var h=document.getElementById("play");h.addEventListener("click",function(){player.playVideo()})}e.bind("click",function(){if(!a("#player").length){a("<iframe />",{id:"player",src:"https://www.youtube.com/embed/"+b.data("video")+"?"+a.param(d)}).attr({width:b.width(),height:b.height(),seamless:"seamless"}).css("border","none").appendTo(b);b.children("img").hide();a(this).css("background-image","url(play-button.png), url("+b.children().attr("src")+")").hide();player=new YT.Player("player",{events:{onStateChange:c,onReady:f}})}a(this).hide()});return this}}(jQuery));
