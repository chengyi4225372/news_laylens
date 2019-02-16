var $container = $('.steadyrain.internationaldistributors');
var map = null;
var infoDisplay;
var markerArray = [];
var usedCountryRM = {};
var usedContinentRM = {};

function BindStickyEvents() {
	if($('.sticky-item').length){
		var stickyContainer = $('.sticky-container');
		var stickyItem = $('.sticky-item');
		var stickyBase = $('.sticky-base');
		var traingPortalContainer = $('.internationaldistributors');

		if (stickyItem.height() < $(window).height()) {
			if (stickyBase.position().top < scrollY) {
				stickyBase.height($('.map-wrapper').height());
				stickyItem.addClass('sticky-fixed');
				var windowWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
				if(windowWidth > 900){
					stickyItem.width(stickyBase.width());
				}
			}
			else {
				stickyBase.css('height', 'unset');
			}
		} else {
			stickyBase.css('height', 'unset');
		}

		// new ResizeSensor($('.portal-search'), function () {
		//     var stickyItemHeight = stickyItem.height();
		//     var navHeight = $('#productSupportNavContainer').height();
		//     if (stickyItemHeight > navHeight) {
		//         $('#productSupportNavContainer').height(stickyItemHeight);
		//         stickyBase.css('height', 'unset');
		//     } else {
		//         $('#productSupportNavContainer').css('height', 'unset');
		//         stickyBase.height(navHeight);
		//     }

		// });
		$(window).resize(function() {
			stickyItem.width(stickyBase.width());
		});

		$(window).scroll(function () {
			var windowWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
			if(windowWidth > 900){
				if($('.sticky-item').length){
					var windowHeight = $(window).height();
					var stickyItemHeight = stickyItem.height();
					var scrollValue = scrollY;
					var stickyBasePositon = stickyBase.position().top;
					var traingPortalPosition = traingPortalContainer.position().top;
					var introHeight = $('.intro-section').outerHeight();
					stickyBasePositon = stickyBasePositon + traingPortalPosition + introHeight;
					var stickyContainerHeight = stickyContainer.height();
					//var navHeight = $('#productSupportNavContainer').height();

					if (stickyItem.hasClass('sticky-fixed')) {
						if (stickyItemHeight > windowHeight) {
							stickyItem.removeClass('sticky-fixed');
							stickyBase.css('height','unset');
						}
						if (stickyBasePositon > scrollValue) {
							stickyBase.height(stickyContainerHeight - 66);
							stickyItem.removeClass('sticky-fixed');
						}


					} else {
						if (stickyItemHeight < windowHeight) {
							if (stickyBasePositon < scrollValue) {
								stickyBase.height(stickyContainerHeight - 66);
								stickyItem.addClass('sticky-fixed');
								stickyItem.width(stickyBase.width());
							}
							else {
								stickyBase.css('height', 'unset');
							}
						} else {
							stickyBase.css('height', 'unset');
						}
					}

					if ((stickyItemHeight + scrollValue - stickyBasePositon) > stickyContainerHeight) {
						$('.sticky-fixed').addClass('sticky-absolute').removeClass('sticky-fixed');
					} else {
						$('.sticky-absolute').addClass('sticky-fixed').removeClass('sticky-absolute');
					}
				}
			}
			else{
				stickyBase.css('height','unset');
				stickyItem.css('width','unset');
			}
		});
	}
}

$(document).ready(function() {

	$.Initialize();

    /* $('.locationsListView').hide(); */
    //Form API Query String for Browsing by Country

    var regionalManagerData = [];
    $.crud($.service('/distributors', 'RegionalManagers'), 'get').done(function(data, status, xhr) {
        regionalManagerData = data;
    });
    //On continent change, narrow the list of countries
    $('.browseContinent', $container).on('change', function() {
        HandleContinentChange();
    });
    //On country change, narrow the list of states
    $('.browseCountry', $container).on('change', function() {
        /* $('.locationsListView').hide(); */
        usedCountryRM = {};
        $('.manager-detail', $container).empty();
        var filterQS = $.GetAPIQueryStringBrowseCountry();
        var filterCountry = $('.browseCountry', $container).val();
        if (filterCountry != "") {
            $.crud($.service('/distributors', 'DistributorsByCountry?' + filterQS), 'get').done(function(data, status, xhr) {
                if (data) {
                    $.InitMap("country", data);
                }
            });
        }
    });
    // Clears the browse filter
    $('.resetBrowse', $container).on('click', function() {
        /* $('.locationsListView').hide(); */
        $('.browseCountry', $container).val('');
        $('.browseCountry', $container).empty();
        $(".location-detail").empty();
        $('.browseCountry', $container).html("<option value=''>Select A Country</option>");
        $('.browseContinent', $container).val('');
        map = null;
        var usedCountry = {};
        usedCountryRM = {};
        $('.manager-detail', $container).empty();
        $.crud($.service('/distributors', 'Distributors'), 'get').done(function(data, status, xhr) {
            if (map == null) {
                $.InitMap("reset", data);
            }
			$('html,body').animate({
				scrollTop: 0
			});
			$('.filter-section').addClass('sticky-item');
			BindStickyEvents();
        });
    });
    $('#managerListTab').click(function() {
        $('#distributorListTab').removeClass('activeTab');
        $(this).addClass('activeTab');
        /* $('.locationsListView').hide(); */
        $('.managerListView').show();
    });
    $('#distributorListTab').click(function() {
        $('#managerListTab').removeClass('activeTab');
        $(this).addClass('activeTab');
        $('.managerListView').hide();
        /* $('.locationsListView').show(); */
    });

    usedCountryRM = {};
    //Displays the info on marker click when using browse results
    $.AttachInstructionText = function(marker, item, countryItem, status, results) {
        var latitude = item.Latitude == null ? '' : item.Latitude.trim();
        var longitude = item.Longitude == null ? '' : item.Longitude.trim();
        var title = item.DistributorName == null ? '' : item.DistributorName.trim();
        var address1 = item.Address1 == null ? '' : item.Address1.trim();
        var address2 = item.Address2 == null ? '' : item.Address2.trim();
        var address3 = item.Address3 == null ? '' : item.Address3.trim();
        var country = item.Country == null ? '' : item.Country.trim()
        var displaycountry = countryItem.Country == null ? '' : countryItem.Country.trim()
        var countrycode = countryItem.CountryCode == null ? '' : countryItem.CountryCode.trim()
        var continent = countryItem.Continent == null ? '' : countryItem.Continent.trim()
        var site = item.Website == null ? '' : item.Website.trim();
        var email = item.Email == null ? '' : item.Email.trim();
        var phone = item.Phone == null ? '' : item.Phone.trim();
        var postalcode = item.PostalCode == null ? '' : item.PostalCode.trim();
        var rmcode = item.RMCode == null ? '' : item.RMCode.trim().toLowerCase();
        var continentrmcode = continent + rmcode;
        var listCountry = '<li>' + displaycountry + '</li>';
        var id = item.Id;
		var logoPath = "/Portals/0/Images/representative-photos/" + id + ".jpg";
        var contactUsHref = String.format("javascript:ContactUsClick('{0}', '{1}', '{2}', '{3}', '{4}');", item.Id, postalcode, true, 'Sales', countryItem.Country);
        var rmItem = [];
        var firstName = "";
        var lastName = "";
        if (rmcode != "") {
            var rmItem = filterByProperty(regionalManagerData, "AccountNumber", rmcode);
            firstName = rmItem[0].FirstName == null ? '' : rmItem[0].FirstName.trim();
            lastName = rmItem[0].LastName == null ? '' : rmItem[0].LastName.trim();
        };
        var href = String.format("javascript:ContactUsClick('{0}', '', '{1}', 'null' , '{2}');", rmcode, false, countrycode);
        var mapAddress = "http://maps.google.com/?daddr=" + latitude + "," + longitude;
        var content = '<div id="content" class="info-window" >' + '<div class="distributor-logo"><img src="' + logoPath + '"></div>' + '<div id="content" class="contact international-column text">' + '<div class="distributor-name">' + title + '</div>' + '<div class="distributor-address1">' + address1 + '</div>' + '<div class="distributor-address2">' + address2 + '</div>' + '<div class="distributor-address3">' + address3 + '</div>' + '<div class="distributor-postal-code">' + postalcode + '</div>' + '<div class="distributor-country">' + country + '</div>' + '<div class="distributor-directions"><a class="distributor-directions" href="' + mapAddress + '" target="_blank">Get Directions</a></div>' + '</div>' + '<div id="content" class="international-column profile text">' + '<div>Contact Info</div>' + '<div class="distributor-site"><a href="http://' + site + '">' + site + '</a></div>' + '<div class="distributor-email"><a href="mailto:' + email + '">' + email + '</a></div>' + '<div class="distributor-phone">' + phone + '</div>' + '<div class="distributor-contactUs"><a class="main-button product-download w-button global-contactus" href="' + contactUsHref + '">Contact</a></div>' + '</div>' + '</div>';
        if (country == 'IRELAND') {
            content = '<div id="content" class="info-window">' + '<div class="distributor-logo"><img src="' + logoPath + '"></div>' + '<div id="content" class="contact international-column text">' + '</div>' + '<div id="content" class="international-column profile text">' + '<div>Contact Info</div>' + '<div class="distributor-site"><a href="http://' + site + '">' + site + '</a></div>' + '<div class="distributor-email"><a href="mailto:' + email + '">' + email + '</a></div>' + '<div class="distributor-phone">' + phone + '</div>' + '<div class="distributor-contactUs"><a class="main-button product-download w-button global-contactus" href="' + contactUsHref + '">Contact</a></div>' + '</div>' + '</div>';
        }
        if (status == 'continent' || status == "country") {
            var listContent = '<li id="content" class="international-card-wrapper">' + '<div class="heading-1"><div>' + displaycountry + '</div></div>' + '<div id="content" class="contact international-column no-border w-col w-col-4 w-col-small-small-stack w-col-tiny-tiny-stack">' + '<div class="distributor-name">' + title + '</div>' + '<div class="distributor-address1">' + address1 + '</div>' + '<div class="distributor-address2">' + address2 + '</div>' + '<div class="distributor-address3">' + address3 + '</div>' + '<div class="distributor-country">' + country + '</div>' + '<div class="distributor-site"><a href="http://' + site + '">' + site + '</a></div>' + '<div class="distributor-email"><a href="mailto:' + email + '">' + email + '</a></div>' + '<div class="distributor-phone">' + phone + '</div>' + '<div class="distributor-directions"><a class="distributor-directions" href="' + mapAddress + '" target="_blank">Get Directions</a></div>' + '</div>' + '<div id="content" class="contact international-column w-col w-col-4 w-col-small-small-stack w-col-tiny-tiny-stack">' + '<div class="distributor-logo"><img src="' + logoPath + '"></div>' + '<div class="distributor-contactUs"><a class="main-button international grey w-button global-contactus" href="' + contactUsHref + '">Contact</a></div>' + '</div>' + '<div id="content" class="international-column profile w-col w-col-4 w-col-small-small-stack w-col-tiny-tiny-stack">' + '<div class="distributor-logo"><img src="/Portals/0/Images/representative-photos/' + rmcode + '.png"></div>' + '<div class="distributor-name"><h5>' + firstName + " " + lastName + '</h5></div>' + '<a class="main-button w-button global-contactus" href="' + href + '" style="margin-top: 5px;">Contact Now</a>' + '</div>' + '<div class="floatFix"></div>' + '</li>';
            $(".location-detail").append(listContent);
        }
        if (status == "country") {
            infoDisplayCenters.setContent(content);
            if(results < 2){
				infoDisplayCenters.open(map, marker);
			}

        }
        google.maps.event.addListener(marker, 'click', function() {
            infoDisplayCenters.setContent(content);
            infoDisplayCenters.open(map, marker);
        });
    }


}); //End of document.ready

$.GetAPIQueryStringBrowseCountry = function() {
	var filterQS = "";
	filterQS += '&' + 'country=' + $('.browseCountry', $container).val();
	return filterQS;
};
$.GetAPIQueryStringBrowseContinent = function(continent) {
	var filterQS = "";
	filterQS += '&' + 'continent=' + continent;
	return filterQS;
};
$.Initialize = function() {
	//Prepends each dropdownlist with an option telling users what they are selecting
	$('select[data-property]').each(function() {
		if ($(this).data('property') == 'Country') {
			$(this).prepend('<option value="" selected>Select A ' + $(this).data('property') + '</option>');
		}
	});
	var usedCountry = {};
	$.crud($.service('/distributors', 'Distributors'), 'get').done(function(data, status, xhr) {
		if (data) {
			$.InitMap("reset", data);
			var regionValue = getCookie('international-region');
			var regionSelect = $('.browseContinent');
			regionSelect.val(regionValue);
			HandleContinentChange();
			$('html,body').animate({
				scrollTop: 0
			});
			$('.filter-section').addClass('sticky-item');
			BindStickyEvents();
		}
	});
};
// Initializes map and displays the markers for browse results
$.InitMap = function(status, result) {
	$(".locationsListView ").hide();
	$(".location-detail ").empty();
	// Instantiate an info window to hold basic info.
	infoDisplayCenters = new google.maps.InfoWindow();
	var bounds = new google.maps.LatLngBounds();
	var normalOptions = {
		center: new google.maps.LatLng(24, 29),
		zoom: 2,
		minZoom: 2,
		scrollwheel: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [{
			featureType: "landscape",
			stylers: [{
				gamma: 9.99
			}]
		}]
	};
	var countryOptions = {
		center: new google.maps.LatLng(-24, -29),
		zoom: 4,
		scrollwheel: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var canadaOptions = {
		center: new google.maps.LatLng(24, 29),
		zoom: 10,
		minZoom: 2,
		scrollwheel: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [{
			featureType: "landscape",
			stylers: [{
				gamma: 9.99
			}]
		}]
	};
	var displayCountryCodes = $.GetCountryList(result);
	if (status == "country" && result.length > 1) {
		map = new google.maps.Map(document.getElementById("map_canvas_schedules"), countryOptions);
	} else if (status == "country") {
		map = new google.maps.Map(document.getElementById("map_canvas_schedules"), normalOptions);
	} else if (status == "canada") {
		map = new google.maps.Map(document.getElementById("map_canvas_schedules"), canadaOptions);
		var world_geometry = new google.maps.FusionTablesLayer({
			query: {
				select: 'geometry',
				from: '1N2LBk4JHwWpOY4d9fobIn27lfnZ5MDy-NoqqRpk',
				where: 'ISO_2DIGIT IN (' + displayCountryCodes + ')'
			},
			styles: [{
				polygonOptions: {
					fillColor: "#CC0000",
					strokeColor: "#CC0000",
					strokeWeight: 0,
					fillOpacity: 0.3,
					strokeOpacity: 0.1
				},
				featureType: "landscape",
				stylers: [{
					gamma: 9.99
				}]
			}],
			map: map,
			suppressInfoWindows: true
		});
	} else {
		map = new google.maps.Map(document.getElementById("map_canvas_schedules"), normalOptions);
		var world_geometry = new google.maps.FusionTablesLayer({
			query: {
				select: 'geometry',
				from: '1N2LBk4JHwWpOY4d9fobIn27lfnZ5MDy-NoqqRpk',
				where: 'ISO_2DIGIT IN (' + displayCountryCodes + ')'
			},
			styles: [{
				polygonOptions: {
					fillColor: "#CC0000",
					strokeColor: "#CC0000",
					strokeWeight: 1,
					fillOpacity: 0.3,
					strokeOpacity: 0.1
				},
				featureType: "landscape",
				stylers: [{
					gamma: 9.99
				}]
			}],
			map: map,
			suppressInfoWindows: true
		});
	}
	var markers = [];
	var i = 0;
	$.each(result, function(index, item) {
		var resultLength = result.length;
		var itemCountry = item.Country;
		var itemCountryCode = item.CountryCode;
		if (result.length == 1) {
			SetGeoLocationForInternationalDistributors('normal', true, "", "", "", "", item);
		}
		$.each(item.Distributor, function(index, distribItem) {
			var Lat = "";
			var Long = "";
			var countrycode = item.Country
			if (countrycode != distribItem.Country) {
				var Lat = parseFloat(item.Latitude);
				var Long = parseFloat(item.Longitude)
			} else {
				var Lat = parseFloat(distribItem.Latitude);
				var Long = parseFloat(distribItem.Longitude);
			}
			var myLatlng = new google.maps.LatLng(Lat, Long);
			//map.setCenter(results[0].geometry.location);
			var markerCenters = new google.maps.Marker({
				map: map,
				position: myLatlng,
				animation: google.maps.Animation.DROP,
				title: item != null ? item.Location : ''
			});
			markers.push(markerCenters);
			if (status == "country") {
				$.AttachInstructionText(markerCenters, distribItem, item, "country", result[0].Distributor.length);
				$(".locationsListView ").show();
			} else if (status == "continent") {
				$.AttachInstructionText(markerCenters, distribItem, item, "continent", result.length);
				$(".locationsListView ").show();
			} else {
				$.AttachInstructionText(markerCenters, distribItem, item, "normal", result.length);
			}
			if (status != "reset") {
				bounds.extend(myLatlng);
				if (status == 'canada') {
					var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 15, bounds.getSouthWest().lng() + 15);
					var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 15, bounds.getSouthWest().lng() - 15);
					bounds.extend(extendPoint1);
					bounds.extend(extendPoint2);
				} else if (!(status == "country" && result.length > 1)) {
					// Don't zoom in too far on only one marker
					if (bounds.getNorthEast().equals(bounds.getSouthWest())) {
						var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 0.05, bounds.getSouthWest().lng() + 0.05);
						var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 0.05, bounds.getSouthWest().lng() - 0.05);
						bounds.extend(extendPoint1);
						bounds.extend(extendPoint2);
					}
				} else if ($('.browseCountry', $container).val() == "BRAZIL") {
					var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 8, bounds.getSouthWest().lng() + 8);
					var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 8, bounds.getSouthWest().lng() - 8);
					bounds.extend(extendPoint1);
					bounds.extend(extendPoint2);
				} else if ($('.browseCountry', $container).val() == "RUSSIA") {
					var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 0.05, bounds.getSouthWest().lng() + 0.05);
					var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 0.05, bounds.getSouthWest().lng() - 0.05);
					bounds.extend(extendPoint1);
					bounds.extend(extendPoint2);
				} else {
					var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 4, bounds.getSouthWest().lng() + 4);
					var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 4, bounds.getSouthWest().lng() - 4);
					bounds.extend(extendPoint1);
					bounds.extend(extendPoint2);
				}
				map.fitBounds(bounds);
			}
		});
	});
};

$.GetCountryList = function(results) {
	var countryList = '';
	var countryCode;
	var resultsLength = results.length;
	$.each(results, function(index, item) {
		if ((resultsLength - index) > 1) {
			countryCode = item.CountryCode == null ? '' : item.CountryCode.trim();
			countryList = countryList + "'" + countryCode + "'" + ",";
		} else {
			countryCode = item.CountryCode == null ? '' : item.CountryCode.trim();
			countryList = countryList + "'" + countryCode + "'";
		}
	});
	return countryList;
};

function SetGeoLocationForInternationalDistributors(status, useGps, city, state, stateCode, postalCode, countryItem) {
	var ip = getQueryStringParameterByName('ip');
	if (ip === "") ip = undefined;
	var useGeoLocation = 'True';
	var country = countryItem.Country;
	country = country.toLowerCase().replace(/\b[a-z]/g, function(letter) {
		return letter.toUpperCase();
	});
	var geoLocationRequest = {
		Status: status,
		LocationProvided: useGps,
		UseGeoLocationSetting: useGeoLocation,
		City: city,
		State: state,
		StateCode: stateCode,
		PostalCode: postalCode,
		Country: country,
		CountryCode: countryItem.CountryCode,
		IpAddress: ip
	};
	$('#ajaxloadingLocation').show();
	$.crud($.service('/GeoLocation', 'RequestRepsByLocation'), 'POST', geoLocationRequest).done(function(data) {
		var json = JSON.parse(data);
		/* 			var wasCookieUsed = json.WasCookieUsed; */
		var reps = json.Representatives;
		var countries = json.CountryJsonList;
		var location = {
			city: json.City,
			zip: json.Zip,
			country: json.Country
		}
		InitializeLocationPicker(json.CountryCode);
		//DisplayRepresentatives(reps, location.zip, countryItem);
		$('html,body').animate({
			scrollTop: 0
		});
		$('.filter-section').addClass('sticky-item');
		BindStickyEvents();
	}).fail(function(jqXHR, textStatus, errorThrown) {
		alert("Request failed: " + errorThrown + "\n" + jqXHR.responseText);
	})
};

function InitializeLocationPicker(countryCode) {
	if (countryCode === null || countryCode === undefined) return;
	countryCode = countryCode.toUpperCase();
	if (countryCode === "CA" || countryCode === "US") {
		$('#zipcode').show();
	} else {
		$('#zipcode').hide();
	}
};

function filterByProperty(array, prop, value) {
	var filtered = [];
	value = value.toUpperCase();
	for (var i = 0; i < array.length; i++) {
		var obj = array[i];
		for (var key in obj) {
			if (typeof(obj[key] == "object")) {
				var item = obj[key];
				if (item == value) {
					filtered.push(obj);
				}
			}
		}
	}
	return filtered;
};

/*function DisplayRepresentatives(reps, zip, countryItem) {
	var section = $('#RepresentativesSection');
	section.empty();
	for (var i = 0; i < reps.length; i++) {
		var rep = reps[i];
		var $businessCard = $('<div>').addClass('representative clearfix');
		var $territory = rep.TerritoryCode;
		if ($territory) {
			$territory = rep.TerritoryCode.substring(0, 6);
		}
		if (rep.IsDistributor == false) {
			var $header = BuildRepHeader($territory, rep.FormattedRepType);
			var $img = BuildProfileImageRep(rep.ImageUrl, rep.FullName, rep.IsDistributor, rep.FormattedRepType, $territory, rep.RepType);
			var $info = BuildRepInfo(rep, zip, countryItem.CountryCode);
			$businessCard.append($header, $img, $info);
			section.append($businessCard);
		}
	}
};*/

function BuildRepHeader(territory, formattedRepType) {
	var $p = $('<p>').addClass('type');
	var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html('Your ' + formattedRepType + ' is');
	return $('<p>').addClass('type').html('Your ' + formattedRepType + ' is');
};

function BuildProfileImageRep(src, name, isDistributor, formattedRepType, territory, repType) {
	var $img = $('<img>').attr('src', src).attr('alt', name);
	var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html($img);
	if (!territory) {
		return $('<div>').addClass('left').append($img);
	} else if (formattedRepType == "Service Representative" || repType == "Division Manager") {
		return $('<div>').addClass('left').append($img);
	} else {
		return $('<div>').addClass('left').append($a);
	}
};

function BuildRepInfo(rep, zip, country) {
	var $div = $('<div>').addClass('right');
	var $territory = rep.TerritoryCode;
	var $exportRM = rep.AccountNumber.substring(0, 3);
	var $name = "";
	if ($exportRM == 'EXP') {
		if (!$territory) {
			$name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
		} else if (rep.FormattedRepType == "Service Representative" || rep.RepType == "Division Manager") {
			$name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
		} else {
			$territory = rep.TerritoryCode.substring(0, 6);
			$name = BuildWebsiteLinkTerr($territory, rep.FullName);
		}
		var $location = $('<p>').css('margin-bottom', '0').html(rep.Location);
		var $phone = "";
		if (rep.Phone != '') {
			$phone = BuildRepPhone(rep.Phone);
		} else {
			$phone = BuildRepPhone(rep.Phone2);
		}
		var $contactUs = BuildContactUsButton(rep.AccountNumber, rep.ContactUsText, zip, false, rep.ContactUsType, country);
		return $div.append($name, $location, $phone, $contactUs);
	}
};

function BuildContactUsButton(accountNumber, contactUsText, zip, isDistributor, contactType, country) {
	var href = String.format("javascript:ContactUsClick('{0}', '{1}', '{2}', '{3}', '{4}');", accountNumber, zip, isDistributor, contactType, country);
	return $('<a>').addClass('main-button product-download w-button global-contactus').css('margin-top', '5px').attr('href', href).html(contactUsText);
};

function BuildWebsiteLink(websiteUrl) {
	var $p = $('<p>');
	var $a = $('<a target="_blank">').attr('href', "http://" + websiteUrl).css('margin-bottom', '0').html(websiteUrl);
	return $p.append($a);
};

function BuildWebsiteLinkTerr(territory, name) {
	var $p = $('<p>').css('margin', '0');
	var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html(name);
	return $p.append($a);
};

function BuildRepPhone(phone) {
	if (phone != '') {
		var formattedPhone = phone.substring(3);
		var phoneType = phone.substring(0, 3);
		var areaCode = phone.substring(3, 6);
		var phonePart2 = phone.substring(6, 9);
		var phonePart3 = phone.substring(9, 13);
		var extension = phone.substring(13, 20);
		phone = phoneType + '(' + areaCode + ') ' + phonePart2 + '-' + phonePart3;
		if (extension != '') {
			phone = phone + ' EXT: ' + extension;
		}
		var $p = $('<p>');
		var $a = $('<a>').attr('href', "tel:" + formattedPhone).css('margin-bottom', '0').html(phone);
		return $p.append($a);
	}
};

function HandleContinentChange() {
	usedCountryRM = {};
	/* $('.locationsListView').show(); */
	var continent = $('.browseContinent', $container).val();
	$('.manager-detail .RegionSection').each(function() {
		if ($(this).attr('regioncode') != continent) {
			$(this).hide();
			$('.RegionManagers', this).hide();
		} else {
			$(this).show();
		}
	});
	if (continent != 'SELECT') {
		var filterQS = '&' + 'continent=' + continent;
		$('.browseCountry', $container).empty();
		$('#RepresentativesSection', $container).empty();
		$('.browseCountry', $container).html("<option value=''>Select A Country</option>");
		var usedCountry = {};
		$.crud($.service('/distributors', 'DistributorsByContinent?' + filterQS), 'get').done(function(data, status, xhr) {
			if (data) {
				$.each(data, function(index, item) {
					if (!usedCountry[item.DisplayCountry]) {
						$('.browseCountry', $container).append('<option value="' + item.Country.trim() + '">' + item.Country.trim() + '</option>');
						usedCountry[this.Country] = item.DisplayCountry;
					}
				});
				if (continent == 'NORTH AMERICA') {
					$.InitMap("canada", data);
				} else {
					$.InitMap("continent", data);
				}
				$('html,body').animate({
					scrollTop: 0
				});
				$('.filter-section').addClass('sticky-item');
				BindStickyEvents();
			}
		});
	} else {
		$.crud($.service('/distributors', 'Distributors'), 'get').done(function(data, status, xhr) {
			$('.browseCountry', $container).val('');
			$('.browseCountry', $container).empty();
			$('.browseCountry', $container).html("<option value=''>Select A Country</option>");
			$('.browseContinent', $container).val('');
			$.InitMap("reset", data);
			$('html,body').animate({
				scrollTop: 0
			});
			$('.filter-section').addClass('sticky-item');
			BindStickyEvents();
		});
	}
};

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
};

function ContactUsClick(accountNumber, zip, isDistributor, contactType, country) {
    var acctno = $(".black-button").attr("data-accountnumber");
    var isdist = $(".black-button").attr("data-isdistributor");
    var cntctype = $(".black-button").attr("data-contactustype");
    $('#Country').val(country);
    if (typeof accountNumber != 'undefined') {
        $('#HiddenRepNumber').val(accountNumber);
        $('#IsDistributor').val(isDistributor);
        $('#ContactType').val(contactType);
    } else {
        $('#HiddenRepNumber').val(acctno);
        $('#IsDistributor').val(isdist);
        $('#ContactType').val(cntctype);
    }
    $('#Origin').val('International');
    $('#ContactType').val('Sales');
    $('#global-contactusform').show();
};
