var slidesPerPanel=derterminSlides();$(window).load(function(){slidesPerPanel=derterminSlides();determinePanels(slidesPerPanel);determineArrows();});$(window).resize(function(){var resizedWindowSlides=derterminSlides()
if(resizedWindowSlides!=slidesPerPanel){determinePanels(resizedWindowSlides);determineArrows();slidesPerPanel=resizedWindowSlides;}});function derterminSlides(){var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);var slides=0
if(windowWidth>1750){var slides=6}
else if(windowWidth>1500){var slides=5}
else if(windowWidth>1200){var slides=4}
else if(windowWidth>992){var slides=3}
else if(windowWidth>600){var slides=2}
else{var slides=1}
return slides;}
function determinePanels(numberOfSlidesPerPanel){var slideCount=$('.slideContainer .contentContainer').length;$(".contentContainer").each(function(){$(this).removeClass(function(index,className){return(className.match(/(^|\s)panelPosition\S+/g)||[]).join(' ');});});$("#animatedContentSlider > div > div.slider-section-wrapper.w-slide").children().unwrap();var totalSlides=0;var slidePosition=0;var panelPosition=0;$('.slideContainer .contentContainer').each(function(){if(slidePosition==numberOfSlidesPerPanel){$(".panelPosition"+panelPosition,".slideContainer").wrapAll('<div class="slider-section-wrapper w-slide">');if(!$('#animatedContentSlider > div > div.slider-section-wrapper.w-slide.active').length){$('#animatedContentSlider > div > div.slider-section-wrapper.w-slide').addClass('active');}
slidePosition=0;++panelPosition;$(this).addClass("panelPosition"+panelPosition);++slidePosition;++totalSlides;}
else{$(this).addClass("panelPosition"+panelPosition);++slidePosition;++totalSlides;}
if(totalSlides==slideCount){$(".panelPosition"+panelPosition,".slideContainer").wrapAll('<div class="slider-section-wrapper w-slide">');if(!$('#animatedContentSlider > div > div.slider-section-wrapper.w-slide.active').length){$('#animatedContentSlider > div > div.slider-section-wrapper.w-slide').addClass('active');}}});}
$(document).ready(function(){$('.slider-arrow#right').click(function(){var activeSlide=$('#animatedContentSlider > div > div.slider-section-wrapper.w-slide.active');activeSlide.removeClass('active').next().addClass('active');determineArrows();});$('.slider-arrow#left').click(function(){var activeSlide=$('#animatedContentSlider > div > div.slider-section-wrapper.w-slide.active');activeSlide.removeClass('active').prev().addClass('active');determineArrows();});});function determineArrows(){var activeSlide=$("#animatedContentSlider > div > div.slider-section-wrapper.w-slide.active");if(activeSlide.next().length){$('.slider-arrow#right').show();}
else{$('.slider-arrow#right').hide();}
if(activeSlide.prev().length){$('.slider-arrow#left').show();}
else{$('.slider-arrow#left').hide();}}
function determineHeight(){var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth>600)
{var sliderHeight=$('.geolocation #animatedContentSlider').height();$('.geolocation .repContainer').each(function(){$(this).height(sliderHeight-20);});$('.geolocation .repContainer .main-button').each(function(){$(this).addClass('bottom-button')});}}