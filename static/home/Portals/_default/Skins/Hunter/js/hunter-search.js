$(document).ready(function(){DetermineSearch();function DetermineSearch(){var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth<992){$('.search-section-mobile').append($('.search-wrapper'));}
else{$('.search-section-desktop').append($('.search-wrapper'));}}
$(window).resize(function(){DetermineSearch();});})