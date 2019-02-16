$(document).ready(function(){$('.toolbar .language').click(function(){if($('.oem-slider').is(':visible')){$('.oem-slider').slideUp('fast');}
if($('.international-slider').is(':visible')){$('.international-slider').slideUp('fast');}
$('.translate').slideToggle('fast');});$('.toolbar .subscribe').click(function(){if($('.oem-slider').is(':visible')){$('.oem-slider').slideUp('fast');}
if($('.international-slider').is(':visible')){$('.international-slider').slideUp('fast');}
$('.subscribe-slider').slideToggle('fast');});});$('.goog-te-menu-value span:first-child').bind("DOMSubtreeModified",function(){var language;language=$('.goog-te-menu-value span:first-child').text();if(language=='Select Language'){language='English';}
$('.toolbar .language span').text(language);});