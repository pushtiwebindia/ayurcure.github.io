// JavaScript Document

var mygallery=new fadeSlideShow({
	wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
	dimensions: [770, 230], //width/height of gallery in pixels. Should reflect dimensions of largest image
	imagearray: [
	    ["images/banner.jpg"],
		["images/banner1.jpg"],
		["images/banner6.jpg"],
		["images/banner7.jpg"]
		
		//<--no trailing comma after very last image element!
	],
	displaymode: {type:'auto', pause:3000, cycles:0, wraparound:false},
	persist: false, //remember last viewed slide and recall within same session?
	fadeduration: 1000, //transition duration (milliseconds)
	descreveal: "ondemand",
	togglerid: ""
})
