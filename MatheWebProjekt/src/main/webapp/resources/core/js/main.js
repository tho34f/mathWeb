$(window).scroll(function() {
    if ($(this).scrollTop() > 1){  
        $('header').addClass("sticky");
        $('#headerImage').addClass("headerImageSticky");
        $('#headerImage').removeClass("headerImage");
    }
    else{
        $('header').removeClass("sticky");
        $('#headerImage').removeClass("headerImageSticky");
        $('#headerImage').addClass("headerImage");
    }
});

function openSearch(){
	$("#fp-main-header-search__overlay").addClass("open");
	$("#fp-main-header-search").addClass("open");
}

function closeSearch(){
	$("#fp-main-header-search__overlay").removeClass("open");
	$("#fp-main-header-search").removeClass("open");
}