function setCookie(cname,cvalue,exmins){var d=new Date();d.setTime(d.getTime()+(exmins*60*1000));var expires="expires="+d.toUTCString();document.cookie=cname+"="+cvalue+";"+expires+";path=/";}
$('.secondary-nav-drawer-international a').click(function(){var region=$(this).attr('region');setCookie('international-region',region,3);});