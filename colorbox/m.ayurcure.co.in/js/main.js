jQuery(document).ready(function(d){var b=1170;c();d(window).on("resize",function(){(!window.requestAnimationFrame)?setTimeout(c,300):window.requestAnimationFrame(c)});d(".cd-nav-trigger").on("click",function(g){g.preventDefault();if(d(".cd-main-content").hasClass("nav-is-visible")){a();d(".cd-overlay").removeClass("is-visible")}else{d(this).addClass("nav-is-visible");d(".cd-main-header").addClass("nav-is-visible");d(".cd-main-content").addClass("nav-is-visible").one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend",function(){d("body").addClass("overflow-hidden")});e("close");d(".cd-overlay").addClass("is-visible")}});d(".cd-search-trigger").on("click",function(g){g.preventDefault();e();a()});d(".go-back").on("click",function(){d(this).parent("ul").addClass("is-hidden").parent(".has-children").parent("ul").removeClass("moves-out")});function a(){d(".cd-nav-trigger").removeClass("nav-is-visible");d(".cd-main-header").removeClass("nav-is-visible");d(".cd-primary-nav").removeClass("nav-is-visible");d(".has-children ul").addClass("is-hidden");d(".has-children a").removeClass("selected");d(".moves-out").removeClass("moves-out");d(".cd-main-content").removeClass("nav-is-visible").one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend",function(){d("body").removeClass("overflow-hidden")})}function e(g){if(g=="close"){d(".cd-search").removeClass("is-visible");d(".cd-search-trigger").removeClass("search-is-visible");d(".cd-overlay").removeClass("search-is-visible")}else{d(".cd-search").toggleClass("is-visible");d(".cd-search-trigger").toggleClass("search-is-visible");d(".cd-overlay").toggleClass("search-is-visible");if(d(window).width()>b&&d(".cd-search").hasClass("is-visible")){d(".cd-search").find('input[type="search"]').focus()}(d(".cd-search").hasClass("is-visible"))?d(".cd-overlay").addClass("is-visible"):d(".cd-overlay").removeClass("is-visible")}}function f(){var h=window,g="inner";if(!("innerWidth" in window)){g="client";h=document.documentElement||document.body}if(h[g+"Width"]>=b){return true}else{return false}}function c(){var g=d(".cd-nav");var h=f();if(h){g.detach();g.insertBefore(".cd-header-buttons")}else{g.detach();g.insertAfter(".cd-main-content")}}});
