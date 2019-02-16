function BindStickyEvents(){if($('.sticky-item').length){var stickyContainer=$('.sticky-container');var stickyItem=$('.sticky-item');var stickyBase=$('.sticky-base');var traingPortalContainer=$('.trainingportal');if(stickyItem.height()<$(window).height()){if(stickyBase.position().top<scrollY){stickyBase.height($('.portal-search').height());stickyItem.addClass('sticky-fixed');var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth>900){stickyItem.width(stickyBase.width());}}
else{stickyBase.css('height','unset');}}else{stickyBase.css('height','unset');}
$(window).resize(function(){stickyItem.width(stickyBase.width());});$(window).scroll(function(){var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth>900){if($('.sticky-item').length){var windowHeight=$(window).height();var stickyItemHeight=stickyItem.height();var scrollValue=scrollY;var stickyBasePositon=stickyBase.position().top;var traingPortalPosition=traingPortalContainer.position().top;var tabMenuHeight=$('.w-tab-menu').outerHeight();stickyBasePositon=stickyBasePositon+traingPortalPosition+tabMenuHeight+46;var stickyContainerHeight=stickyContainer.height();if(stickyItem.hasClass('sticky-fixed')){if(stickyItemHeight>windowHeight){stickyItem.removeClass('sticky-fixed');stickyBase.css('height','unset');}
if(stickyBasePositon>scrollValue){stickyBase.height(stickyContainerHeight-66);stickyItem.removeClass('sticky-fixed');}}else{if(stickyItemHeight<windowHeight){if(stickyBasePositon<scrollValue){stickyBase.height(stickyContainerHeight-66);stickyItem.addClass('sticky-fixed');stickyItem.width(stickyBase.width());}
else{stickyBase.css('height','unset');}}else{stickyBase.css('height','unset');}}
if((stickyItemHeight+scrollValue-stickyBasePositon)>stickyContainerHeight){$('.sticky-fixed').addClass('sticky-absolute').removeClass('sticky-fixed');}else{$('.sticky-absolute').addClass('sticky-fixed').removeClass('sticky-absolute');}}}
else{stickyBase.css('height','unset');stickyItem.css('width','unset');}});}};$(function(){var $container=$('.steadyrain.trainingportal');var courseVM=null;var locationVM=null;var scheduleVM=null;var map=null;var mapCenters=null;var infoDisplay;var markerArray=[];$.GetAPIQueryStringSearch=function(){var filterQS="";filterQS+='course='+$('.searchCourse',$container).val();filterQS+='&'+'location='+$('.searchLocation',$container).val();filterQS+='&'+'startdate='+$('.txtStartDate',$container).val();filterQS+='&'+'enddate='+$('.txtEndDate',$container).val();return filterQS;}
$.GetAPIQueryStringSearchCourse=function(){var filterQS="";filterQS+='course='+$('.searchCourse',$container).val();filterQS+='&'+'location=';filterQS+='&'+'startdate=';filterQS+='&'+'enddate=';return filterQS;}
$.GetAPIQueryStringBrowseLocation=function(){var filterQS="";filterQS+='&'+'location='+$('.browseLocation',$container).val();return filterQS;}
$.GetAPIQueryStringBrowseCountry=function(){var filterQS="";filterQS+='&'+'country=US';return filterQS;}
$.GetAPIQueryStringBrowseState=function(){var filterQS="";filterQS+='&'+'state='+$('.browseState',$container).val();return filterQS;}
$.DisplayScheduleList=function(data){if(data!=null){$.each(data,function(index,item){if(item.TrainingCenter.Country=="CA"){item.TrainingCourse.Url=item.TrainingCourse.CaUrl;}
item.TrainingCenter.Url=item.TrainingCenter.Url+"/courseId/"+item.TrainingCourse.Id;item.RepImagePath=item.RepImagePath.replace('.jpg','.png');});}
if(scheduleVM==null){scheduleVM=new SchedulesViewModel(data);$('.noResultView').show();$('.result-view').hide();ko.applyBindings(scheduleVM,document.getElementById('search'));}else{scheduleVM.schedules(data);}
if(data==null){$('.noResultView').show();$('.result-view').hide();}else if(data.length==0){$('.noResultView').show();$('.result-view').hide();}
else{$('.noResultView').hide();$('.result-view').show();}}
$('.searchFilter',$container).on('click',function(){var filterQS=$.GetAPIQueryStringSearch();var searchResults=0;var searchCourse=$('.searchCourse',$container).val();searchCourse=searchCourse.replace(/\s/g,'_');searchCourse=searchCourse.replace(/\//g,'_');searchCourse=searchCourse.replace(/\(|\)/g,"_");var searchLoc=$('.searchLocation',$container).val();searchLoc=searchLoc.replace(/,/g,"");searchLoc=searchLoc.replace(/\s/g,'_');var searchSD=$('.txtStartDate',$container).val();searchSD=searchSD.replace(/\//g,"-");var searchED=$('.txtEndDate',$container).val();searchED=searchED.replace(/\//g,"-");$.crud($.service('/trainingschedules','ByScheduleFilter?'+filterQS),'get').done(function(data,status,xhr){$.DisplayScheduleList(data);$.InitMap(data);});$('html,body').animate({scrollTop:0});$('.filter-section').addClass('sticky-item');BindStickyEvents();});$('#btnSearch',$container).on('load',function(){});$('.searchCourse',$container).on('change',function(){var filterQS=$.GetAPIQueryStringSearchCourse();$('.searchLocation',$container).empty();$('.searchLocation',$container).html("<option value=''>Select A Location</option>");var usedLocations={};$.crud($.service('/trainingschedules','ByScheduleFilter?'+filterQS),'get').done(function(data,status,xhr){if(data){$.each(data,function(index,item){if(!usedLocations[item.TrainingCenter.Location.trim()]){$('.searchLocation',$container).append('<option value="'+item.TrainingCenter.Location.trim()+'">'+item.TrainingCenter.Location.trim()+'</option>');usedLocations[this.TrainingCenter.Location.trim()]=item.TrainingCenter.Location.trim();}});}});});$('.btnSearch',$container).on('load',function(){var filterQS=$.GetAPIQueryStringBrowseCountry();$('.browseLocation',$container).empty();$('.browseLocation',$container).html("<option value=''>Select A Location</option>");var usedStates={};$.crud($.service('/trainingcenters','ActiveByCountry?'+filterQS),'get').done(function(data,status,xhr){if(data){$.each(data,function(index,item){if(!usedStates[item.State.trim()]){$('.browseState',$container).append('<option value="'+item.State.trim()+'">'+item.State.trim()+'</option>');usedStates[this.State.trim()]=item.State.trim();}});$.InitMapCenters(data);}});});$('.browseLocation',$container).on('change',function(){var filterQS=$.GetAPIQueryStringBrowseLocation();$.crud($.service('/trainingcenters','ActiveByLocation?'+filterQS),'get').done(function(data,status,xhr){$('html,body').animate({scrollTop:0});$.InitMapCenters(data);});});$('.browseState',$container).on('change',function(){var filterQS=$.GetAPIQueryStringBrowseState();$('.browseLocation',$container).empty();$('.browseLocation',$container).html("<option value=''>Select A Location</option>");$.crud($.service('/trainingcenters','ActiveByState?'+filterQS),'get').done(function(data,status,xhr){if(data){$.each(data,function(index,item){$('.browseLocation',$container).append('<option value="'+item.Location.trim()+'">'+item.Location.trim()+'</option>');});$('html,body').animate({scrollTop:0});$.InitMapCenters(data);}});});$('.resetSearch',$container).on('click',function(){$('.searchCourse',$container).val('');$('.searchLocation',$container).val('');$('.txtStartDate',$container).val('');$('.txtEndDate',$container).val('');map=null;$.DisplayScheduleList(null);var filterQS=$.GetAPIQueryStringBrowseCountry();$.crud($.service('/trainingcenters','ActiveByCountry?'+filterQS),'get').done(function(data,status,xhr){if(map==null)
{$.InitMapCenters(data);}});});$('.resetBrowse',$container).on('click',function(){$('.browseCountry',$container).val('');$('.browseState',$container).val('');$('.browseLocation',$container).val('');map=null;$.DisplayScheduleList(null);var filterQS=$.GetAPIQueryStringBrowseCountry();$.crud($.service('/trainingcenters','ActiveByCountry?'+filterQS),'get').done(function(data,status,xhr){if(map==null)
{$.InitMapCenters(data);}});});$('.searchInput',$container).keyup(function(e){if(e.keyCode==13){$('.searchFilter',$container).click();}});var CoursesViewModel=function(data){var self=this;self.courses=ko.observableArray(data);self.usCourses=ko.computed(function(){return ko.utils.arrayFilter(self.courses(),function(course){for(var i=0;i<usClasses.length;i++){if(usClasses[i].toLowerCase()===course.CCOD.toLowerCase()){return true;}}
return false;});});self.canadaCourses=ko.computed(function(){return ko.utils.arrayFilter(self.courses(),function(course){for(var i=0;i<canadaClasses.length;i++){if(canadaClasses[i].toLowerCase()===course.CCOD.toLowerCase()){return true;}}
return false;});});self.sortKey=ko.observable();self.sortCourses=function(header,event){switch(self.sortKey()){case 'ascending':self.courses.sort(function(a,b){return a.Description>b.Description?1:-1;});break;case 'descending':self.courses.sort(function(a,b){return a.Description<b.Description?1:-1;});break;}};}
var SchedulesViewModel=function(data){var self=this;self.schedules=ko.observableArray(data);}
$.Initialize=function(){$(".txtStartDate",$container).datepicker({defaultDate:"+1w",changeMonth:true,onClose:function(selectedDate){$(".txtEndDate",$container).datepicker("option","minDate",selectedDate);}});$(".txtEndDate",$container).datepicker({defaultDate:"+1w",changeMonth:true,onClose:function(selectedDate){$(".txtStartDate",$container).datepicker("option","maxDate",selectedDate);}});$('select[data-property]').each(function(){$(this).prepend('<option value="" selected>Select A '+$(this).data('property')+'</option>');});$.crud($.service('/trainingcenters','Active'),'get').done(function(data,status,xhr){if(mapCenters==null)
{$.InitMapCenters(data);}});var filterQS=$.GetAPIQueryStringSearch('');$.crud($.service('/trainingcourses','Scheduled'),'get').done(function(data,status,xhr){if(data){$.each(data,function(index,item){$('.searchCourse',$container).append('<option value="'+item.Description.trim()+'">'+item.Description.trim()+'</option>');});}});var filterQS=$.GetAPIQueryStringBrowseCountry();$('.browseLocation',$container).empty();$('.browseLocation',$container).html("<option value=''>Select A Location</option>");var usedStates={};$.crud($.service('/trainingcenters','ActiveByCountry?'+filterQS),'get').done(function(data,status,xhr){if(data){$.each(data,function(index,item){if(!usedStates[item.State.trim()]){$('.browseState',$container).append('<option value="'+item.State.trim()+'">'+item.State.trim()+'</option>');usedStates[this.State.trim()]=item.State.trim();}});$.InitMapCenters(data);}});if(courses!=undefined&&courses!=null)
{if(courseVM==null)
{courseVM=new CoursesViewModel(courses);ko.applyBindings(courseVM,document.getElementById('uscourses'));ko.applyBindings(courseVM,document.getElementById('canadacourses'));}}}
$.Initialize();$.InitMap=function(result){infoDisplay=new google.maps.InfoWindow();var bounds=new google.maps.LatLngBounds();var myOptions={center:new google.maps.LatLng(38.7452,-90.3908),zoom:3,scrollwheel:false,minZoom:3,mapTypeId:google.maps.MapTypeId.ROADMAP};map=new google.maps.Map(document.getElementById("map_canvas_schedules"),myOptions);var i=0;$.each(result,function(index,item){var Lat=parseFloat(item.TrainingCenter.Lat);var Long=parseFloat(item.TrainingCenter.Long);var myLatlng=new google.maps.LatLng(Lat,Long);var marker=new google.maps.Marker({map:map,position:myLatlng,animation:google.maps.Animation.DROP,title:item!=null?item.Location:''});$.AttachInstructionText(marker,item);bounds.extend(myLatlng);if(result.length<15){var extendPoint2=new google.maps.LatLng(bounds.getNorthEast().lat()+2,bounds.getNorthEast().lng()+2);bounds.extend(extendPoint2);}
map.fitBounds(bounds);});}
$.InitMapCenters=function(result){infoDisplayCenters=new google.maps.InfoWindow();var bounds=new google.maps.LatLngBounds();var myOptions={center:new google.maps.LatLng(38.7452,-90.3908),zoom:3,scrollwheel:false,mapTypeId:google.maps.MapTypeId.ROADMAP};mapCenters=new google.maps.Map(document.getElementById("map_canvas_schedules"),myOptions);var i=0;$.each(result,function(index,item){var Lat=parseFloat(item.Lat);var Long=parseFloat(item.Long);var myLatlng=new google.maps.LatLng(Lat,Long);var markerCenters=new google.maps.Marker({map:mapCenters,position:myLatlng,animation:google.maps.Animation.DROP,title:item!=null?item.Location:''});$.AttachInstructionTextCenters(markerCenters,item);bounds.extend(myLatlng);if(bounds.getNorthEast().equals(bounds.getSouthWest())){var extendPoint1=new google.maps.LatLng(bounds.getNorthEast().lat()+0.03,bounds.getNorthEast().lng()+0.03);var extendPoint2=new google.maps.LatLng(bounds.getNorthEast().lat()-0.03,bounds.getNorthEast().lng()-0.03);bounds.extend(extendPoint1);bounds.extend(extendPoint2);}
mapCenters.fitBounds(bounds);});}
$.AttachInstructionText=function(marker,item){var title=item.TrainingCenter.Title.trim();var address1=item.TrainingCenter.Address1.trim();var address2=item.TrainingCenter.Address2.trim();var city=item.TrainingCenter.City==''?'':item.TrainingCenter.City.trim();var state=item.TrainingCenter.State==''?'':item.TrainingCenter.State.trim();var url=item.TrainingCenter.Url;url=url.substring(0,url.indexOf('/courseId/'))
var mapAddress="http://maps.google.com/?daddr="+address1+","+address2+","+city+','+state;var address='<div id="content" class="infocontent">'+
'<div class="trainingcenter-name">'+title+'</div>'+
'<div class="trainingcenter-address1">'+address1+'</div>'+
'<div class="trainingcenter-address2">'+address2+'</div>'+
'<div class="trainingcenter-state">'+city+', '+state+'</div>'+
'<a href="'+mapAddress+'" target="_blank">Get Direction</a>'+
'<div class="trainingcenter-id"><a href="'+url+'">View Classes</a>'+'</div>'+
'</div>';google.maps.event.addListener(marker,'click',function(){infoDisplay.setContent(address);infoDisplay.open(map,marker);});}
$.AttachInstructionTextCenters=function(marker,item){var title=item.Title.trim();var address1=item.Address1.trim();var address2=item.Address2.trim();var city=item.City==''?'':item.City.trim();var state=item.State==''?'':item.State.trim();var id=item.Id;var mapAddress="http://maps.google.com/?daddr="+address1+","+address2+","+city+','+state;var centerId="/training-center/centerid/"+id;var address='<div id="content" class="infocontent">'+
'<div class="trainingcenter-name">'+title+'</div>'+
'<div class="trainingcenter-address1">'+address1+'</div>'+
'<div class="trainingcenter-address2">'+address2+'</div>'+
'<div class="trainingcenter-state">'+city+', '+state+'</div>'+
'<a href="'+mapAddress+'" target="_blank">Get Direction</a>'+
'<div class="trainingcenter-id"><a onclick="CourseMapCookieSetter(this)"href="'+centerId+'">View Classes</a>'+'</div>'+
'</div>';google.maps.event.addListener(marker,'click',function(){infoDisplayCenters.setContent(address);infoDisplayCenters.open(mapCenters,marker);});}});$(document).ready(function(){function createCookie(name,value,minutes){var expires;if(minutes){var date=new Date();date.setTime(date.getTime()+(minutes*60*1000));expires="; expires="+date.toGMTString();}else{expires="";}
document.cookie=encodeURIComponent(name)+"="+encodeURIComponent(value)+expires+"; path=/";}
function eraseCookie(name){createCookie(name,"",-1);}
$(document).on('click','.schedule-coursename a',function(){var clickDetails=$(this).text();clickDetails=clickDetails.replace(/\s/g,'_');clickDetails=clickDetails.replace(/\//g,'');clickDetails=clickDetails.replace(/\(|\)/g,"")
var courseLocation=$(this).closest('.ScheduleItem').find('.locationNameLink').text();courseLocation=courseLocation.replace(/\s/g,'_');courseLocation=courseLocation.replace(/,/g,'');eraseCookie('searchcourse');createCookie('searchcourse',clickDetails,20);eraseCookie('searchlocation');createCookie('searchlocation',courseLocation,20);});$(document).on('click','.schedule-locationname a',function(){var clickDetails=$(this).text();clickDetails=clickDetails.replace(/\s/g,'_');clickDetails=clickDetails.replace(/,/g,'');var courseName=$(this).closest('.ScheduleItem').find('.courseNameLink').text();courseName=courseName.replace(/\s/g,'_');courseName=courseName.replace(/\//g,'');courseName=courseName.replace(/\(|\)/g,"")
eraseCookie('searchlocation');createCookie('searchlocation',clickDetails,20);eraseCookie('searchcourse');createCookie('searchcourse',courseName,20);});CourseMapCookieSetter=function(clickedLocation){var mapSearch=$(clickedLocation).parents('.trainingcenter-id').siblings('.trainingcenter-state').text();mapSearch=mapSearch.replace(/\//g,'');mapSearch=mapSearch.replace(/\,/g,'');mapSearch=mapSearch.replace(/\./g,'');mapSearch=mapSearch.replace(/\s/g,'_');eraseCookie('mapsearch');createCookie('mapsearch',mapSearch,20);};});