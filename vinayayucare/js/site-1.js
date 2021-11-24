var mycarousel_itemList = [];
var homepage_mycarousel_itemList = [];

function buildRequiredFields(){
    document.getElementById('search_form').requiredfields.value="main_ingredient:"+document.getElementById('search_form').main_ingredient.value+".course:"+document.getElementById('search_form').course.value 
}

function buildTipsFields(){
    document.getElementById('search_form').requiredfields.value="tip_category:"+document.getElementById('search_form').tip_category.value
}

function buildResearcherParameters(){
    document.getElementById('search_form').partialfields.value="researcher_last_name:"+document.getElementById('search_form').researcher_last_name.value+".institution_name:"+document.getElementById('search_form').institution_name.value+".institution_city:"+document.getElementById('search_form').institution_city.value
    document.getElementById('search_form').requiredfields.value="research_subject:"+document.getElementById('search_form').research_subject.value+".grant_type:"+document.getElementById('search_form').grant_type.value+".institution_state:"+document.getElementById('search_form').institution_state.value
}

function replaceURLWithHTMLLinks(text) {
  var exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/ig;
  return text.replace(exp,"<a href='$1'>$1</a>");
}
 
function replaceURLWithHashLinks(text) {
    var exp = /(\s#[a-zA-Z]+)/ig;
    return text.replace(exp," <a href='http://twitter.com/search?q=$1'>$1</a>");
}
 
function encodeHashtag(text){
    var exp = /(q=\s#)/ig;
    return text.replace(exp, 'q=%23');
}

function carouselInitCallback(carousel, state){
    while((mycarousel_itemList.length % carousel.options.scroll) != 0){
        mycarousel_itemList.push(carousel.create());
    }
    
    for(var i = carousel.options.visible; i <= mycarousel_itemList.length; i++){
        carousel.remove(i);
    }
};

function mycarousel_itemVisibleInCallback(carousel, item, i, state, evt){
    // The index() method calculates the index from a
    // given index who is out of the actual item range.
    var idx = carousel.index(i, mycarousel_itemList.length);
    carousel.add(i, $(mycarousel_itemList[idx - 1]).html());
};

function mycarousel_itemVisibleOutCallback(carousel, item, i, state, evt){
        carousel.remove(i);
};

function homepage_carouselInitCallback(carousel, state){
    while((homepage_mycarousel_itemList.length % carousel.options.scroll) != 0){
        homepage_mycarousel_itemList.push(carousel.create());
    }
    
    for(var i = carousel.options.visible; i <= homepage_mycarousel_itemList.length; i++){
        carousel.remove(i);
    }
}

function homepage_mycarousel_itemVisibleInCallback(carousel, item, i, state, evt){
    // The index() method calculates the index from a
    // given index who is out of the actual item range.
    var idx = carousel.index(i, homepage_mycarousel_itemList.length);
    carousel.add(i, $(homepage_mycarousel_itemList[idx - 1]).html());
};

$(document).ready(function(){
    // Homepage slide-show right rail tabbed interface
    $('.tabbedSlideshowRail').tabs();

    // Homepage twitter status
    if($('#twitter_status').length){
        $.getJSON("http://api.twitter.com/statuses/user_timeline/AmDiabetesAssn.json?count=1&callback=?", function(data) {
            $('#twitter_status').html(encodeHashtag(replaceURLWithHashLinks(replaceURLWithHTMLLinks(data[0].text))));
        });
    };

    mycarousel_itemList = $('.carousel_content ul li').clone();
    homepage_mycarousel_itemList = $('.homepage_carousel_content ul li').clone();

    $('.carousel_content ul').jcarousel({
        scroll: 5,
        wrap: 'circular',
        buttonNextHTML: '<div><a href="#" onclick="return false;"></a></div>',
        buttonPrevHTML: '<div><a href="#" onclick="return false;"></a></div>',
        initCallback: carouselInitCallback,
        itemVisibleInCallback: {onBeforeAnimation: mycarousel_itemVisibleInCallback},
        itemVisibleOutCallback: {onAfterAnimation: mycarousel_itemVisibleOutCallback}
        });

    $('.homepage_carousel_content ul').jcarousel({
        scroll: 3,
        wrap: 'circular',
        buttonNextHTML: '<div><a href="#" onclick="return false;"></a></div>',
        buttonPrevHTML: '<div><a href="#" onclick="return false;"></a></div>',
        initCallback: homepage_carouselInitCallback,
        itemVisibleInCallback: {onBeforeAnimation: homepage_mycarousel_itemVisibleInCallback},
        itemVisibleOutCallback: {onAfterAnimation: mycarousel_itemVisibleOutCallback}
        });
        
        
        
    $('.dropHolder').hover(function(){ 
        $(this).children('.dropdown-container').show();
        $(this).addClass('hover');
    }, function() {
        $(this).children('.dropdown-container').hide();
        $(this).removeClass('hover');
    
    
    });
});