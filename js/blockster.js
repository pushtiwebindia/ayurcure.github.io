Blockster=function(c,b){var a=this;this.conf={};this.conf.blocks={rows:10,cols:10};this.conf.pause=4000;this.conf.animType="fade";this.conf.blockAnimSpeed=50;this.params=c;this.clickActionQueueInt=false;if(!this.params.holder||$(this.params.holder).length!=1){console.log("Blockster error: could not find holder element '"+this.params.holder+"'");return false}this.params.holder=$(this.params.holder);if(!this.params.pause||!parseInt(this.params.pause)){this.params.pause=this.conf.pause}if(!this.params.blockAnimSpeed||!parseInt(this.params.blockAnimSpeed)){this.params.blockAnimSpeed=this.conf.blockAnimSpeed}if(!this.params.rows||!parseInt(this.params.rows)){this.params.rows=this.conf.blocks.rows}if(!this.params.cols||!parseInt(this.params.cols)){this.params.cols=this.conf.blocks.cols}this.params.holder.dimensions={width:this.params.holder.width(),height:this.params.holder.height()};this.params.dimensions={width:Math.ceil(this.params.holder.dimensions.width/this.params.cols),height:Math.ceil(this.params.holder.dimensions.height/this.params.rows)};if(!b){this.params.holder.children("div").not(":first-child").hide()}if(!b){this.autoInt=setInterval(function(){a.func()},this.params.pause+((this.params.rows*this.params.cols)*this.params.blockAnimSpeed))}else{a.func(b)}};Blockster.prototype.func=function(indexOfSlideToTurnOn){var thiss=this;var currentSlide=this.params.holder.children("div:visible");var nextSlide=!indexOfSlideToTurnOn?currentSlide.nextAll().length!=0?currentSlide.next():this.params.holder.children("div").first():this.params.holder.children("div").eq(indexOfSlideToTurnOn);for(var u=0;u<(this.params.rows*this.params.cols);u++){var block=document.createElement("div");var left,top;$(block).css({width:this.params.dimensions.width,height:this.params.dimensions.height,left:(left=(u%this.params.cols)*this.params.dimensions.width),top:(top=Math.floor(u/this.params.cols)*this.params.dimensions.height),zIndex:10000,overflow:"hidden",position:"absolute"}).hide().addClass("block");var nextSlide_clone=nextSlide.get(0).cloneNode(true);$(nextSlide_clone).show().css({height:this.params.holder.height(),width:this.params.holder.width(),position:"relative",left:-left,top:-top});$(block).append(nextSlide_clone);this.params.holder.append($(block))}var animInt=setInterval(function(){if(thiss.params.holder.children(".block:not(:visible)").length>0){var blocks=thiss.params.holder.children(".block:not(:visible)");with($(blocks.get(!thiss.params.random?0:Math.floor(Math.random()*blocks.length)))){thiss.params.animType=="simple"?show():fadeIn()}}else{if($(".block:animated").length==0){clearInterval(animInt);nextSlide.siblings().hide();nextSlide.show();$(".block").remove()}}},thiss.params.blockAnimSpeed)};Blockster.prototype.jump=function(b){if(this.clickActionQueueInt){clearInterval(a.clickActionQueueInt);a.clickActionQueueInt=false}var a=this;this.clickActionQueueInt=setInterval(function(){if(a.params.holder.children(".block").length==0){clearInterval(this.autoInt);a.func(b);clearInterval(a.clickActionQueueInt);a.clickActionQueueInt=false}},10)};