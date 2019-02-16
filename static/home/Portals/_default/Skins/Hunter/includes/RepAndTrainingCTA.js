var userLocation={};var googleApiKey='AIzaSyC3Q6lYLPuLOcM1wPnqxCNJYz2Tocu_l_I';$(function(){$('.zipError').hide();DetermineRepSlideoutDisplay();SetGeoLocation('initial',false);$('.slideout-wrapper-mobile #change-location-link').on('click',function(){$('.slideout-wrapper-mobile .select-location').toggle();$('.slideout-wrapper-mobile .change-location-link-wrapper').hide();});$('.slideout-wrapper #change-location-link').on('click',function(){$('.slideout-wrapper .select-location').toggle();});$('.geolocation #change-location-link').on('click',function(){$('.select-location').toggle();$('.geolocation .main-slider').toggle();$('.geolocation .change-location-link-wrapper').hide();});$('.secondary-nav-drawer-training #change-location-link-trainer').on('click',function(){$('#no-results').hide();$('.viewAllCourses').hide();$('.secondary-nav-drawer-training .select-location').toggle();$('.secondary-nav-drawer-training .change-location-link-wrapper').hide();});$('#country-select, .slideout-wrapper-mobile #country-select').on('change',function(){HandleZipCodeInputDisplay()});$(document).keypress(function(e){if(e.which==13){var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth<767){$('.slideout-wrapper-mobile #location-submit').click();}
else{$('.geolocation #location-submit').click();}}});$('.secondary-nav-drawer-training #location-submit-trainer').on('click',function(e){e.preventDefault();var zip=$('.secondary-nav-drawer-training #zipcode-input-trainer').val();var country=$('.secondary-nav-drawer-training #country-select-trainer').find('option:selected').text();var countryCode=$('.secondary-nav-drawer-training #country-select-trainer').find('option:selected').val();if(countryCode==="US"||countryCode==="CA"){if(zip.length<3){$('.secondary-nav-drawer-training .zipError').show();return;}
if(zip.length>3){$('.secondary-nav-drawer-training .zipError').hide();}
if(zip=="37722"){zip="37753";}}
if(!$('#zipcode-input-trainer').is(':visible'))zip='';SetGeoLocation('normal',true,"","","",zip,country,countryCode);});$('.slideout-wrapper #location-submit').on('click',function(e){e.preventDefault();var zip=$('.slideout-wrapper #zipcode-input').val();var country=$('.slideout-wrapper #country-select').find('option:selected').text();var countryCode=$('.slideout-wrapper #country-select').find('option:selected').val();if(countryCode==="US"||countryCode==="CA"){if(zip.length<3){$('.slideout-wrapper .zipError').show();return;}
if(zip.length>3){$('.slideout-wrapper .zipError').hide();}
if(zip=="37722"){zip="37753";}}
if(!$('.slideout-wrapper #zipcode-input').is(':visible'))zip='';SetGeoLocation('normal',true,"","","",zip,country,countryCode);});$('.geolocation #location-submit').on('click',function(e){e.preventDefault();var zip=$('.geolocation #zipcode-input').val();var country=$('.geolocation #country-select').find('option:selected').text();var countryCode=$('.geolocation #country-select').find('option:selected').val();if(countryCode==="US"||countryCode==="CA"){if(zip.length<3){$('.geolocation .zipError').show();return;}
if(zip.length>3){$('.geolocation .zipError').hide();}
if(zip=="37722"){zip="37753";}}
if(!$('#zipcode-input').is(':visible'))zip='';SetGeoLocation('normal',true,"","","",zip,country,countryCode);});$('.slideout-wrapper-mobile #location-submit').on('click',function(e){e.preventDefault();var zip=$('.slideout-wrapper-mobile #zipcode-input').val();var country=$('.slideout-wrapper-mobile #country-select').find('option:selected').text();var countryCode=$('.slideout-wrapper-mobile #country-select').find('option:selected').val();if(countryCode==="US"||countryCode==="CA"){if(zip.length<3){$('.slideout-wrapper-mobile .zipError').show();return;}
if(zip.length>3){$('.slideout-wrapper-mobile .zipError').hide();}
if(zip=="37722"){zip="37753";}}
if(!$('.slideout-wrapper-mobile #zipcode-input').is(':visible'))zip='';SetGeoLocation('normal',true,"","","",zip,country,countryCode);});$(window).resize(function(){DetermineSlideoutTransition();});});function GetGeocoordinates(status,country,zip){if(status='normal'&&(country==='United States'||country==='Canada'))
{var googleapi='https://maps.googleapis.com/maps/api/geocode/json?key='+googleApiKey+'&address='+country+','+zip+'&sensor=false';return $.get(googleapi);}
var deferred=$.Deferred();deferred.resolve({status:'no query'});return deferred.promise();}
function SetGeoLocation(status,isLocationProvided,city,state,stateCode,postalCode,country,countryCode){$('#ajaxloadingLocation').show();GetGeocoordinates(status,country,postalCode).done(function(geoData){var geoCoords=null;if(geoData.status==='OK')
{geoCoords={Latitude:geoData.results[0].geometry.location.lat,Longitude:geoData.results[0].geometry.location.lng}}
var geoLocationRequest={Status:status,LocationProvided:isLocationProvided,UseGeoLocationSetting:false,City:city,State:state,StateCode:stateCode,PostalCode:postalCode,Country:country,CountryCode:countryCode,IncludeTrainingReps:true};if(geoCoords){geoLocationRequest.Latitude=geoCoords.Latitude;geoLocationRequest.Longitude=geoCoords.Longitude;}
$.crud($.service('/GeoLocation','RequestRepsByLocation'),'POST',geoLocationRequest).done(function(data){var json=JSON.parse(data);var wasCookieUsed=json.WasCookieUsed;var reps=json.Representatives;var countries=json.CountryJsonList;userLocation={city:json.City,zip:json.Zip,country:json.Country,failure:json.FailureStatus}
if(!geoCoords&&json.Latitude&&json.Longitude){geoCoords={Latitude:json.Latitude,Longitude:json.Longitude}}
if(userLocation.failure=="true"){SetGeoLocation(status,isLocationProvided,city,state,stateCode,postalCode,country,countryCode);}
else{if(userLocation.zip=="37722"){userLocation.zip="37753"}
InitializeLocationPicker(json.CountryCode);FillCountryDropdown(countries);if($('.geolocation').length){DisplayLocationInfoGeoLocation(userLocation);}
else{DisplayLocationInfoSlideOut(userLocation);}
var selectedCountry=""
var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth<767){selectedCountry=$('.slideout-wrapper-mobile #country-select').find('option:selected').val();if(selectedCountry==="US"||selectedCountry==="CA"){$('.slideout-wrapper-mobile #zipcode').show();}else{$('.slideout-wrapper-mobile #zipcode').hide();}}
else{selectedCountry=$('#country-select').find('option:selected').val();if(selectedCountry==="US"||selectedCountry==="CA"){$('#zipcode').show();}else{$('#zipcode').hide();}}
if((status=='initial'&&wasCookieUsed==true)||status=='normal'){DisplayRepresentatives(reps,userLocation,country);userLocation={city:json.City,zip:json.Zip,country:json.Country,failure:json.FailureStatus}
if(geoCoords){userLocation.latitude=geoCoords.Latitude;userLocation.longitude=geoCoords.Longitude;}
SetTrainingLocationIncludes(userLocation);}}}).complete(function(){$('#ajaxloadingLocation').hide();});});}
function DetermineRepSlideoutDisplay(){var fullpath=window.location.pathname;var adminPathCheck=fullpath.substring(0,6);if(fullpath=="/training"||fullpath=="/hunter-international"||fullpath=="/history"||fullpath=="/"||fullpath=="/test-page"||fullpath=="/contact-hunter"||adminPathCheck=="/Admin"){$('.rep-icon-wrapper').hide();}
else{$('.slideout-wrapper').css('display','flex');}}
function FillCountryDropdown(countries){$('#country-select, #country-select-trainer, .slideout-wrapper-mobile #country-select').empty();$('').empty();for(var i=0;i<countries.length;i++){var country=JSON.parse(countries[i]);var $opt=$('<option>').text(country.Name).attr('value',country.Code);if(country.IsSelected==="True"){$opt.attr('selected','selected');}
$('#country-select, #country-select-trainer, .slideout-wrapper-mobile #country-select').append($opt);}
HandleZipCodeInputDisplay();}
function HandleZipCodeInputDisplay(){var selectedCountry=$('#country-select').find('option:selected').val();if(selectedCountry==="US"||selectedCountry==="CA"){$('#zipcode-input').show();}else{$('#zipcode-input').hide();}
var selectedCountryMobile=$('.slideout-wrapper-mobile #country-select').find('option:selected').val();if(selectedCountryMobile==="US"||selectedCountryMobile==="CA"){$('.slideout-wrapper-mobile #zipcode-input').show();}else{$('.slideout-wrapper-mobile #zipcode-input').hide();}}
function InitializeLocationPicker(countryCode){if(countryCode===null||countryCode===undefined)return;countryCode=countryCode;if(countryCode==="CA"||countryCode==="US"){$('#zipcode').show();}else{$('#zipcode').hide();}}
function DisplayLocationInfoGeoLocation(userLocation){var currentLocation=userLocation.city;if(userLocation.city===''&&userLocation.zip===''){currentLocation=userLocation.country;}else if(userLocation.city===''){currentLocation=userLocation.zip;}
if(currentLocation==null||currentLocation==''){$('.geolocation .change-location-link-wrapper').hide();$('.select-location').show();if($('.geolocation .main-slider').is(':visible')){$('.geolocation .main-slider').toggle();}}
else{$('.select-location').hide();$('.geolocation .change-location-link-wrapper').show();if(!($('.geolocation .main-slider').is(':visible'))){$('.geolocation .main-slider').toggle();}}}
function DisplayLocationInfoSlideOut(userLocation){var currentLocation=userLocation.city;var details=userLocation.zip;if(userLocation.city===''&&userLocation.zip===''){details=userLocation.country;currentLocation=userLocation.country;}else if(userLocation.city===''){details=userLocation.country;currentLocation=userLocation.zip;}
if(currentLocation==null||currentLocation==''){$('#change-location-link-wrapper').hide();if(!($('.select-location').is(':visible'))){$('.select-location').slideToggle();}
if($('.geolocation .main-slider').is(':visible')){$('.geolocation .main-slider').hide();}}
else{$('.change-location-text').text("Not in "+details+"?");$('.display-zip').html(details);if($('.select-location').is(':visible')){$('.select-location').slideToggle();$('#change-location-link-wrapper').show();}
if(!($('.geolocation .main-slider').is(':visible'))){$('.geolocation .main-slider').show();}}}
function DisplayRepresentatives(reps,userLocation,country){var appendToSection=""
if($('.geolocation').length){$('.slideout-wrapper-mobile, .rep-icon-wrapper-mobile').remove();appendToSection=$('.geolocation .w-slider-mask .slideContainer');var classArray=$(appendToSection).attr('class').split(' ');for(var i=0;i<classArray.length;i++)
{if(classArray[i].indexOf('repCount')!=-1)
{$(appendToSection).removeClass(classArray[i]);}}
appendToSection.addClass('repCount'+reps.length);if(userLocation.country!=null){if(userLocation.country.toLowerCase()!=="united states"&&userLocation.country.toLowerCase()!=="canada"){appendToSection.addClass('international');}
else{appendToSection.removeClass('international');}}
else{appendToSection.removeClass('international');}}
else{DetermineSlideoutTransition();var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth<767){appendToSection=$('.slideout-wrapper-mobile .rep-container');}
else{appendToSection=$('.slideout-wrapper .rep-container');}}
appendToSection.empty();for(var i=0;i<reps.length;i++){var rep=reps[i];if(rep.FormattedRepType==='Service'){rep.FormattedRepType='Service & Parts';}
if(rep.FormattedRepType=="Regional Manager"){if($('.government-rep').length==0){if(userLocation.country.toLowerCase()==="united states"){DisplayGovernmentSlideOut();}}}
var countrySelected=""
var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth<767){countrySelected=$('.slideout-wrapper-mobile #country-select').find('option:selected').val();}
else{countrySelected=$('#country-select').find('option:selected').val();}
var repWrapper=$('<div class="repWrapper">')
var repContents="";if(rep.ContactUsText.indexOf('Distributor')>0){repContents=$('<div class="repContainer distributor contentContainer">');}
else{repContents=$('<div class="repContainer contentContainer">');}
var img=BuildProfileImage(rep.ImageUrl,rep.FullName);var repInfo=(rep.IsDistributor)?BuildDistributorInfo(rep,userLocation.zip,countrySelected):BuildRepInfo(rep,userLocation.zip,countrySelected);repWrapper.append(img,repInfo);repContents.append(repWrapper);appendToSection.append(repContents);}
if($('.geolocation').length){var slidesPerPanel=derterminSlides();determinePanels(slidesPerPanel);determineArrows();}}
function DisplayGovernmentSlideOut(){var appendToSection=""
if($('.geolocation').length){appendToSection=$('.geolocation .w-slider-mask .slideContainer');}
else{appendToSection=$('.slideout-wrapper .rep-container');}
var repContents=$('<div class="repContainer government-rep contentContainer">');var repWrapper=$('<div class="repWrapper">');var div=$('<div class="reps rep-info">');var header=$('<h3 class = "type heading-2">').html('Gov\'t Sales');var contactUs=BuildContactUsButton("","Contact Now","",false,"Government",'US',"Government Rep","Government Rep","");div.append(header,'<p class="text">&nbsp;</p><p class="text">&nbsp;</p><p class="text">&nbsp;</p><div class="awardsSection"></div>',contactUs);var img=BuildProfileImage("/Portals/_default/Skins/Hunter/images/govtrep.png","Government Sales");repWrapper.append(img,div);repContents.append(repWrapper);appendToSection.append(repContents);}
function BuildProfileImage(src,name){var img=$('<img class="reps rep-image">').attr('src',src).attr('alt',name);return img;}
function BuildRepInfo(rep,zip,country){var div=$('<div class="reps rep-info">')
var name=$('<p class="text rep-name">').html(rep.FullName);var h3=$('<h3 class="type heading-2">'+rep.FormattedRepType+'</h3>');if(rep.AccountNumber==176210){rep.Location='Charleston, SC'}
var location=$('<p class="text">').html(rep.Location);var phone="";var phoneBuilder=rep.RepType=="Instructor"?BuildTrainerPhone:BuildRepPhone;if(rep.Phone!=''){phone=phoneBuilder(rep.Phone);}
else{phone=phoneBuilder(rep.Phone2);}
var repFullName=rep.FullName.replace(/'/g,'');var badgeSection=BuildBadgeSection(rep);var contactUs="";if(rep.RepType=="Sales Rep"||rep.RepType=="Division Manager"||rep.RepType=="Regional Manager"||rep.RepType=="Instructor"){var repFirstName=repFullName.split(" ")[0];contactUs=BuildContactUsButton(rep.AccountNumber,"Contact "+repFirstName,zip,false,rep.ContactUsType,country,rep.FormattedRepType,repFullName,rep.Email);}
else{contactUs=BuildContactUsButton(rep.AccountNumber,rep.ContactUsText,zip,false,rep.ContactUsType,country,rep.FormattedRepType,repFullName,rep.Email);}
if(rep.AccountNumber.indexOf('EXP')!==-1){var email=$('<p class="text">').html(rep.Email);return div.append(h3,name,location,email,phone,badgeSection,contactUs);}
else{return div.append(h3,name,location,phone,badgeSection,contactUs);}}
function BuildDistributorInfo(rep,zip,country){var div=$('<div class="reps rep-info">')
var name=$('<p class="text">').html(rep.FullName);var location=$('<p class="text">').html(rep.Location);var city=$('<p class="text">').html(rep.City);var state=$('<p class="text">').html(rep.State);var phone=$('<p class="text">').html(rep.Phone);var phone2=$('<p class="text">').html(rep.Phone2);var website=BuildWebsiteLink(rep.WebsiteUrl);var contactUs=BuildContactUsButton(rep.AccountNumber,rep.ContactUsText,zip,true,rep.ContactUsType,country,rep.FormattedRepType,rep.FullName,rep.Email);return div.append(name,location,city,state,phone,phone2,website,contactUs);}
function BuildContactUsButton(accountNumber,contactUsText,zip,isDistributor,contactType,country,repType,repName,repEmail){var shortRepType=""
if(typeof(repType)!=='undefined'&&repType!==null)
{shortRepType="Contacted "+repType.replace("Representative","Rep");}
var href=String.format("javascript:ContactUsClick('{0}', '{1}', '{2}', '{3}' , '{4}', '{5}', '{6}', '{7}');",accountNumber,zip,isDistributor,contactType,country,shortRepType,repName,repEmail);if(repType=="Sales"){$('.product-cta-wrapper .global-contactus').each(function(){$(this).attr('href',href);});}
return $('<a class="main-button rep reps global-contactus contactButton gaAutoTrack">').attr('href',href).html(contactUsText).attr("data-ga-category","Soft Lead").attr("data-ga-action",shortRepType).attr("data-ga-label",repName);}
function BuildRepPhone(phone){if(phone!=''&&phone!=null){var formattedPhone=phone.substring(3);var phoneType=phone.substring(0,3);var areaCode=phone.substring(3,6);var phonePart2=phone.substring(6,9);var phonePart3=phone.substring(9,13);var extension=phone.substring(13,20);phone=phoneType+'('+areaCode+') '+phonePart2+'-'+phonePart3;if(extension!=''){phone=phone+' EXT: '+extension;}
var $p=$('<p class="text">');var $a=$('<a>').attr('href',"tel:"+formattedPhone).html(phone);return $p.append($a);}}
function BuildTrainerPhone(phone){if(phone!=''&&phone!=null){var formattedPhone=phone;var areaCode=phone.substring(0,3);var phonePart2=phone.substring(3,6);var phonePart3=phone.substring(6,10);var extension=phone.substring(10,20);phone='('+areaCode+') '+phonePart2+'-'+phonePart3;if(extension!=''){phone=phone+' EXT: '+extension;}
var $p=$('<p class="text">');var $a=$('<a>').attr('href',"tel:"+formattedPhone).html(phone);return $p.append($a);}}
function BuildWebsiteLink(websiteUrl){var $p=$('<p class="text">');var $a=$('<a target="_blank">').attr('href',"http://"+websiteUrl).html(websiteUrl);return $p.append($a);}
function BuildBadgeSection(rep){var awardsSection=$('<div class="awardsSection">');var presidentsClub="";var LHSA="";var serviceExcellence="";if(rep.PresidentsClub!=""&&rep.PresidentsClub!=null){presidentsClub=$('<img class="repAward" src="/Portals/0/Images/rep-awards/presidents-club-icon.svg"><i>The Presidents Club recognizes outstanding sales achievement, top performance and customer satisfaction. </i>')}
if(rep.LHSA!=""&&rep.LHSA!=null){LHSA=$('<img class="repAward" src="/Portals/0/Images/rep-awards/lhsa-icon.svg"><i>The Lee Hunter Service Award recognizes the top 30 service representatives who excel in attitude, customer service and service support. </i>')}
if(rep.ServiceExcellence!=""&&rep.ServiceExcellence!=null){serviceExcellence=$('<img class="repAward" src="/Portals/0/Images/rep-awards/service-excellence-icon.svg"><i>The Service Excellence Award recognizes service excellence through customer service and equipment support. </i>')}
return awardsSection.append(presidentsClub,LHSA,serviceExcellence);}
function ContactUsClick(accountNumber,zip,isDistributor,contactType,country,repType,repName,repEmail){$('#global-contactusform #globalcontactform-zip').val(zip);var acctno=$(".black-button").attr("data-accountnumber");var isdist=$(".black-button").attr("data-isdistributor");var cntctype=$(".black-button").attr("data-contactustype");$('#Country').val(country);if(typeof accountNumber!='undefined'){$('#HiddenRepNumber').val(accountNumber);$('#IsDistributor').val(isDistributor);$('#ContactType').val(contactType);}
else{$('#HiddenRepNumber').val(acctno);$('#IsDistributor').val(isdist);$('#ContactType').val(cntctype);}
$('#global-contactusform #HiddenRepEmail').val(repEmail)
var pathname=window.location.pathname;if(pathname.indexOf('/rep/')>-1){$('#Origin').val('GoogleRepPage');}
else if(pathname.indexOf('/ga/road-force-touch-landing')>-1){$('#Origin').val('GoogleRFT');}
else if(pathname.indexOf('ga/quick-check-landing')>-1){$('#Origin').val('GoogleQT');}
else if(pathname.indexOf('ga/alignment-systems')>-1){$('#Origin').val('GoogleHE');}
else if(pathname.indexOf('ga/tcr-landing')>-1){$('#Origin').val('GoogleTCR');}
else if(pathname.indexOf('ga/rx16-landing')>-1){$('#Origin').val('GoogleRX16');}
else if(pathname.indexOf('ga/quickcomp-landing')>-1){$('#Origin').val('GoogleOCL');}
else if(pathname.indexOf('fb/service')>-1){$('#Origin').val('fb_service');}
else if(pathname.indexOf('fb/autocompelite')>-1){$('#Origin').val('fb_autocompelite');}
else if(pathname.indexOf('fb/integration')>-1){$('#Origin').val('fb_integration');}
else if(pathname.indexOf('fb/heavyduty')>-1){$('#Origin').val('fb_heavyduty');}
else if(pathname.indexOf('fb/auto34s')>-1){$('#Origin').val('fb_auto34s');}
else if(pathname.indexOf('fb/sema')>-1){$('#Origin').val('fb_sema');}
else if(pathname.indexOf('fb/tipsforchoosing')>-1){$('#Origin').val('fb_tipsforchoosing');}
else if(pathname.indexOf('fb/quickid')>-1){$('#Origin').val('fb/quickid');}
else if(pathname.indexOf('brakefrontend')>-1){$('#Origin').val('BrakeFrontEndHE');}
else if(pathname.indexOf('demos')>-1){$('#Origin').val('Demos');}
else if(country!="US"&&country!="CA"){$('#Origin').val('International');$('#ContactType').val('Sales');}
else{var origin=$('#Origin').val();if(origin==""){$('#Origin').val('WebContact');}}
if(repType&&repName){$('#globalcontactform-submit').attr("data-ga-category","Lead").attr("data-ga-action",repType).attr("data-ga-label",repName);}
$('#global-contactusform').show();}
function TrainerContactClick(repEmail){$('#trainer-contactusform #HiddenRepEmail').val(repEmail);}
function SetTrainingLocationIncludes(userLocation){var useGeoLocation=$('#HiddenUseGeoLocationSetting').val();if(useGeoLocation==="")useGeoLocation=undefined;var geoLocationRequest={City:"",State:"",StateCode:"",PostalCode:userLocation.zip,Country:userLocation.country,CountryCode:userLocation.countryCode,Region:"",ModuleId:"3945",TabId:"55",Latitude:userLocation.latitude,Longitude:userLocation.longitude};$.crud($.service('/GeoLocation','RequestTrainingByLocation'),'POST',geoLocationRequest).done(function(trainingData){var json=JSON.parse(trainingData);if(json!=null){var courses=json.Courses;if(courses.length===0){$('#no-results').show();$('.viewAllCourses').show();$('.training-locations').hide();$('.secondary-nav-drawer-training .change-location-link-wrapper').show();}
else{$('#no-results').hide();$('.viewAllCourses').show();DisplayCoursesIncludes(courses);$('.training-locations').show();$('.secondary-nav-drawer-training .change-location-link-wrapper').show();}}else{if(userLocation.city==null){$('#no-results').hide();$('.viewAllCourses').hide();$('.secondary-nav-drawer-training .change-location-link-wrapper').hide();$('.training-locations').hide();}
else{$('#no-results').show();$('.viewAllCourses').show();$('.secondary-nav-drawer-training .change-location-link-wrapper').show();$('.training-locations').hide();}}});}
function DisplayCoursesIncludes(courses){var trainingSection=$('.secondary-nav-drawer-training .training-locations');trainingSection.empty();var canadianProvinces=['QB','ON','NS','NB','MB','BC','PE','SK','AB','NL'];for(var i=0;i<courses.length;i++){var course=courses[i];var $block=$('<div class="secondary-nav-drawer-wrapper">');if((jQuery.inArray(course.State,canadianProvinces))>0){course.Url=course.Url+'-canada';}
var $aDetails=BuildDetailsIncludes(course);$block.append($aDetails);trainingSection.append($block);if(i==0){if($('#training-cta-section').length){var trainingCTA=$('#training-cta-section');trainingCTA.find('*').not('#take-a-class').remove();var ctaDetails=BuildDetailsCTAIncludes(course);var viewAll=$('<a class="class cta-button w-button" id="view-all-courses" href="/training">View All Courses</a>');trainingCTA.append(ctaDetails,viewAll)}
$.GetAPIQueryStringSearchCTA=function(){var filterQS="";filterQS+='course='+course.Description;filterQS+='&'+'location='+course.Location;filterQS+='&'+'startdate='+course.StartDate;filterQS+='&'+'enddate='+course.EndDate;return filterQS;}
var filterQS=$.GetAPIQueryStringSearchCTA();if($('.geolocation').length){var slidesPerPanel=derterminSlides();determinePanels(slidesPerPanel);determineArrows();}}}}
function BuildDetailsIncludes(course){var startDt=moment(course.StartDate).format('l');var endDt=moment(course.EndDate).format('l');var $course=$('<span>').text(course.Description);var $break1=$('<br>');var $dates=$('<span>').text(startDt+' - '+endDt);var $break2=$('<br>');var $location=$('<span>').text(course.City+', '+course.State);var $a=$('<a class="secondary-nav-drawer-thin-link">').attr('href','/training-center/centerid/'+course.CenterID+'/courseId/'+course.CourseID);$a.append($course,$break1,$dates,$break2,$location);return $a;}
function BuildDetailsCTAIncludes(course){var startDt=moment(course.StartDate).format('l');var endDt=moment(course.EndDate).format('l');var $course=$('<span class="section-heading thin white">').text(course.Description);var $dates=$('<span class="section-heading thin white">').text(startDt+' - '+endDt);var $location=$('<span class="section-heading thin white">').text(course.City+', '+course.State);var $a=$('<a class="section-heading thin white">').attr('href','/training-center/centerid/'+course.CenterID+'/courseId/'+course.CourseID);$a.append($course,$dates,$location);return $a;}
function DetermineSlideoutTransition(){var windowWidth=Math.max(document.documentElement.clientWidth,window.innerWidth||0);if(windowWidth<767){$('.slideout-wrapper-mobile .rep-wrapper').append($('.slideout-wrapper .rep-container'));}
else{$('.slideout-wrapper .rep-wrapper').append($('.slideout-wrapper-mobile .rep-container'));}}