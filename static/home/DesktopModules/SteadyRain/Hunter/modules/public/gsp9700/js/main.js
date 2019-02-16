function BindStickyEvents() {
	if($('.sticky-item').length){
		var stickyContainer = $('.sticky-container');
		var stickyItem = $('.sticky-item');
		var stickyBase = $('.sticky-base');
		var traingPortalContainer = $('.trainingportal');

		if (stickyItem.height() < $(window).height()) {
			if (stickyBase.position().top < scrollY) {
				stickyBase.height($('.locations').height());
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
					var tabMenuHeight = $('.w-tab-menu').outerHeight();
					stickyBasePositon = stickyBasePositon + traingPortalPosition +tabMenuHeight + 225;
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

; $(function () {
	var googleApiKey = 'AIzaSyC3Q6lYLPuLOcM1wPnqxCNJYz2Tocu_l_I';

	var debug = false;
	var initData = [];
	var distanceStatus = '';
    var $container = $('.steadyrain.internationaldistributors');
	$('.print-button', $container).hide();
    var map = null;
    var infoDisplay;

     //Form API Query String for Browsing by Zip for the Germany
	 $.GetAPIQueryStringZipGermany = function (latitude,longitude,distance) {

        var filterQS = "";

		filterQS += '&' + 'latitude=' + latitude;
		filterQS += '&' + 'longitude=' + longitude;
		filterQS += '&' + 'distance=' + distance;

        return filterQS;
    }

	//Form API Query String for Browsing by Zip for the Canada
	 $.GetAPIQueryStringZipCanada = function (latitude,longitude,distance,type) {

        var filterQS = "";

		filterQS += '&' + 'latitude=' + latitude;
		filterQS += '&' + 'longitude=' + longitude;
		filterQS += '&' + 'distance=' + distance;
		filterQS += '&' + 'type=' + type;

        return filterQS;
    }

	//Form API Query String for Browsing by Zip for the United States
	 $.GetAPIQueryStringZipUS = function (latitude,longitude,distance,type,trak) {

        var filterQS = "";

		filterQS += '&' + 'latitude=' + latitude;
		filterQS += '&' + 'longitude=' + longitude;
		filterQS += '&' + 'distance=' + distance;
		filterQS += '&' + 'type=' + type;
		filterQS += '&' + 'trak=' + trak;

        return filterQS;
    }
	//Click print button
	$(".print-button").click(function () {
		print()
	});

	//Clicked US Tab
	$('#usBtn', $container).on('click', function() {
		$('.selectDistanceGR,.selectDistanceCA, #gerZipLbl, #canZipLbl, .error, #caSearchContainer, #grSearchContainer').hide();
		$('.selectDistanceUS, #usaZipLbl, #usSearchContainer, #rftSelector, #rfeSelector, #straightTrakSelector ').show();
		$.Reset('usa');
	});

	//Clicked Canada Tab
	$('#caBtn', $container).on('click', function() {
		$('.selectDistanceGR,.selectDistanceUS, #usaZipLbl, #gerZipLbl, #straightTrakSelector, .error, #usSearchContainer, #grSearchContainer, #rfeSelector').hide();
		$('.selectDistanceCA, #canZipLbl, #caSearchContainer, #rftSelector').show();
		$.Reset('canada');
	});

	//Clicked Germany Tab
	$('#grBtn', $container).on('click', function() {
		$('.selectDistanceUS,.selectDistanceCA, #usaZipLbl, #canZipLbl, #rftSelector, #straightTrakSelector, .error, #caSearchContainer, #usSearchContainer, #rfeSelector').hide();
		$('.selectDistanceGR, #gerZipLbl, #grSearchContainer').show();
		$.Reset('germany');
	});

	 //Clicked Search Filter US
    $('.usSearchFilter', $container).on('click', function () {
        $.GetAndDisplayLocations("usa");
	    var zip = $('.browseZip').val();
		if ($.isNumeric(zip) && zip.length == 5){
			if (zip == "37722"){
				zip = "37753";
			}

			var country = 'United States';
			var countryCode = 'US';

			SetGeoLocation('normal',true, "", "", "", zip, country, countryCode);

			$('#RepresentativesSection').addClass("repBoxDisplay");
			$('#zipError').hide();
			$('.print-button').show();
		}
		else{
			$('#zipError').show();
			$.Reset('usa');
		}

    });

	//Clicked Search Filter	Canada
    $('.caSearchFilter', $container).on('click', function () {
       $.GetAndDisplayLocations("canada");
	   var zip = $('.browseZip').val();
		if (zip.match(/[a-zA-Z]/) && zip.length < 8) {
			if(zip.match(/[0-9]/)) {

				var country = 'Canada';
				var countryCode = 'CA';

				//Main Function that ends up getting the rep
				SetGeoLocation('normal',true, "", "", "", zip, country, countryCode);

				$('#RepresentativesSection').addClass("repBoxDisplay");
				$('.print-button').show();
			}
			else{
				$('#zipError').show();
				$.Reset('canada');
			}
		}
		else{
			$('#zipError').show();
			$.Reset('canada');
		}

    });

	//Clicked Search Filter	Germany
    $('.grSearchFilter', $container).on('click', function () {
       $.GetAndDisplayLocations("germany");
	   var zip = $('.browseZip').val();
	   if ($.isNumeric(zip) && zip.length == 5){
		   $('#zipError').hide();
		   $('.print-button').show();
	   }
	   else{
		   $('#zipError').show();
		   $.Reset('germany');
	   }
    });

	//Main Function that gets the locations, and then displays them on the map
    $.GetAndDisplayLocations = function (country) {
		$(".location-detail").empty();
		//Figures out which radio button was selected, and sets the distance based of that.
		var distance = "";
		if($('#ca20').is(':checked')){
			distance = 12.4274;
		}
		else if($('#ca40').is(':checked')){
			distance = 24.8548;
		}
		else if($('#ca80').is(':checked')){
			distance = 49.7097;
		}
		else if($('#gr20').is(':checked')){
			distance = 12.4274;
		}
		else if($('#gr40').is(':checked')){
			distance = 24.8548;
		}
		else if($('#gr80').is(':checked')){
			distance = 49.7097;
		}
		else if($('#gr150').is(':checked')){
			distance = 93.2057;
		}
		else if($('#us5').is(':checked')){
			distance = 5;
		}
		else if($('#us10').is(':checked')){
			distance = 10;
		}
		else if($('#us20').is(':checked')){
			distance = 20;
		}
		if(distance != ""){
			$('#distError').hide();
			distanceStatus = 'good'
		}
		//Shows an Error when no distance is selected
		else{
			$('#distError').show();
			distanceStatus = 'none selected'
			return;
		}

		var zip = $('.browseZip', $container).val();
		if (zip!= null){
			//If the country is germany, add it to the address in order to clarify in cases of German zips matching US zips
			if (country=="germany"){
				if ($.isNumeric(zip) && zip.length == 5){
					var googleapi = 'https://maps.googleapis.com/maps/api/geocode/json?key=' + googleApiKey + '&address=' + country + ',' + zip + '&sensor=false';
				}
			}
			if (country=="canada"){
				if (zip.match(/[a-zA-Z]/) && zip.length < 8) {
					if(zip.match(/[0-9]/)) {
						var googleapi = 'https://maps.googleapis.com/maps/api/geocode/json?key=' + googleApiKey + '&address=' + country + ',' + zip + '&sensor=false';
					}
				}

			}
			if (country=="usa"){
				if ($.isNumeric(zip) && zip.length == 5){
					var googleapi = 'https://maps.googleapis.com/maps/api/geocode/json?key=' + googleApiKey + '&address=' + country + ',' + zip + '&sensor=false';
				}
			}

			$.get(googleapi, function (data) {
				if (data.status === "OK") {
					$('#zipError').hide();
					var lat = data.results[0].geometry.location.lat;
					var lng = data.results[0].geometry.location.lng;

					//Checks to see if road force touch is selected
					var model = "None"
					if($('#rft').is(':checked')){
						model = "Touch";
                        if($('#rfe').is(':checked')){
                            model = "Touch,Elite";
                        }
					}
                    else if($('#rfe').is(':checked')){
                        model = "Elite";
                    }

					//Checks to see if trakCheck is selected
					var trakCheck = "No"
					if($('#straightTrak').is(':checked')){
						trakCheck = "Yes";
					}

					//Get range to query against
					var long1 = lng + distance;
					var long2 = lng - distance;
					var lat1 = lat + distance;
					var lat2 = lat - distance;

					var filterUS = $.GetAPIQueryStringZipUS(lat,lng,distance,model,trakCheck);
					var filterCA = $.GetAPIQueryStringZipCanada(lat,lng,distance,model);
					var filterGR = $.GetAPIQueryStringZipGermany(lat,lng,distance);
					var dataLength = "";
					if (country == "canada"){
						//AJAX request that gets canadian locations by zip
						$.crud($.service('/gsp9700', 'CanadianGSP9700ByZip?' + filterCA), 'get')
						.done(function (data, status, xhr) {
							if(data.length != 0){
								dataLength = data.length;
								$('#noLocations').hide();
								$.InitMap("ca",data);
								$('html,body').animate({
									scrollTop: 0
								});
								$('.filter-section').addClass('sticky-item');
								BindStickyEvents();

							}
							else{
								$('#noLocations').show();
								$.InitMap("ca", initData);
							}
						});
					}
					else if (country == "germany"){
						//AJAX request that gets german locations by zip
						$.crud($.service('/gsp9700', 'GermanGSP9700ByZip?' + filterGR), 'get')
						.done(function (data, status, xhr) {
							if(data.length != 0){
								dataLength = data.length;

								$('#noLocations').hide();
								$.InitMap("gr",data);
								$('html,body').animate({
									scrollTop: 0
								});
								$('.filter-section').addClass('sticky-item');
								BindStickyEvents();
							}
							else{
								$('#noLocations').show();
								$.InitMap("gr", initData);
							}

						});
					}
					else{
						//AJAX request that gets US locations by zip
						$.crud($.service('/gsp9700', 'GSP9700ByZip?' + filterUS), 'get')
						.done(function (data, status, xhr) {
							if(data.length != 0){
								dataLength = data.length;

								$('#noLocations').hide();
								$.InitMap("us",data);
								$('html,body').animate({
									scrollTop: 0
								});
								$('.filter-section').addClass('sticky-item');
								BindStickyEvents();
							}
							else{
								$('#noLocations').show();
								$.InitMap("us", initData);
							}
						});
					}
				}
				//Displays error if no zip is supplied
				else{
					$('#zipError').show();
				}
			});
		}
    };

	//Resets everything when called, and initalizes map based off country
    $.Reset = function (country) {
        $(':input', $container).val('');
		$(':input', $container).prop('checked', false);
		$('.error', $container).hide();
		$('.print-button').hide();
		$(".location-detail").empty();
		$('#RepresentativesSection', $container).empty();

		if (country == 'usa'){
			$.InitMap("us", initData);
		}
		else if (country == 'canada'){
			$.InitMap("ca", initData);
		}
		else {
			$.InitMap("gr", initData);
		}
    }

	$('#resetUS', $container).on('click', function () {
        $.Reset('usa')
    });

	$('#resetCA', $container).on('click', function () {
        $.Reset('canada')
    });

	$('#resetGR', $container).on('click', function () {
        $.Reset('germany')
    });

    // Initializes map and displays the markers for browse results
    $.InitMap = function (status, result) {

        // Instantiate an info window to hold basic info.
        infoDisplayCenters = new google.maps.InfoWindow();

        var bounds = new google.maps.LatLngBounds();
		//Sets the options for each country
		var usOptions = {
            center: new google.maps.LatLng(39, -100),
            zoom: 4,
			scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
		var caOptions = {
            center: new google.maps.LatLng(54, -94),
            zoom: 4,
			scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
		var grOptions = {
            center: new google.maps.LatLng(51, 10),
            zoom: 5,
			scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

		if (status == "us"){
			map = new google.maps.Map(document.getElementById("map_canvas_gsp9700"), usOptions);
			country = status;
		}
		if (status == "ca"){
			map = new google.maps.Map(document.getElementById("map_canvas_gsp9700"), caOptions);
			country = status;
		}
		if (status == "gr"){
			map = new google.maps.Map(document.getElementById("map_canvas_gsp9700"), grOptions);
			country = status;
		}

        var i = 0;
        $.each(result, function (index, item) {
			var indexString = String(index + 1);
			var Lat = parseFloat(item.Latitude);
			var Long = parseFloat(item.Longitude);
			var myLatlng = new google.maps.LatLng(Lat, Long);

			/* var markers = new google.maps.Marker({
				map: map,
				position: myLatlng,
				animation: google.maps.Animation.DROP,
				title: item != null ? item.Company : ''
			}); */
			// var markers = new MarkerWithLabel({
			// 	map: map,
			// 	position: myLatlng,
			// 	title: item != null ? item.Company : '',
			// 	labelContent: "ABCD",
			// 	labelText: indexString,
			// 	labelClass: 'mapMarkerLabel',
			// 	labelInBackground: false,
			// 	icon: pinSymbol('#c00')
			// });

			var markers = new google.maps.Marker({
				map: map,
				position: myLatlng,
				label: indexString

			});

			$.AttachInstructionText(markers, item, country, "normal", index);

			$.AttachInstructionText(markers, item, country, "displaylist", index);

			bounds.extend(myLatlng);

			if (!(status == "country" && result.length > 1)) {
				// Don't zoom in too far on only one marker
				if (bounds.getNorthEast().equals(bounds.getSouthWest())) {
					var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 0.05, bounds.getSouthWest().lng() + 0.05);
					var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 0.05, bounds.getSouthWest().lng() - 0.05);
					bounds.extend(extendPoint1);
					bounds.extend(extendPoint2);
				}
			}
			else {
				var extendPoint1 = new google.maps.LatLng(bounds.getSouthWest().lat() + 4, bounds.getSouthWest().lng() + 4);
				var extendPoint2 = new google.maps.LatLng(bounds.getSouthWest().lat() - 4, bounds.getSouthWest().lng() - 4);
				bounds.extend(extendPoint1);
				bounds.extend(extendPoint2);
			}
			map.fitBounds(bounds);

        });
		$("ul.location-detail").quickPagination({pagerLocation:"both",pageSize:"15"});

    }

	//Initializes the United States tab to display the map and filterbox properly on page load.
	$('.selectDistanceGR,.selectDistanceCA, #gerZipLbl, #canZipLbl, .error, #caSearchContainer, #grSearchContainer').hide();
	$('.selectDistanceUS, #usaZipLbl, #usSearchContainer').show();
	$.Reset('usa');

	// function pinSymbol(color) {
	// 	return {
	// 		path: 'M 0,0 C -2,-20 -10,-22 -10,-30 A 10,10 0 1,1 10,-30 C 10,-22 2,-20 0,0 z',
	// 		fillColor: color,
	// 		fillOpacity: 1,
	// 		strokeColor: '#c00',
	// 		strokeWeight: 1.1,
	// 		scale: 1.1
	// 	};
	// }

	function BuildPhone(phone) {
		if (phone != ''){
			var formattedPhone = phone.substring(3);
			var areaCode = phone.substring(0,3);
			var phonePart2 = phone.substring(3,6);
			var phonePart3 = phone.substring(6,10);
			var extension = phone.substring(10,20);

			phone = '('+ areaCode +')' +'-'+ phonePart2 +'-'+ phonePart3;
			if (extension != ''){
				phone = phone + ' EXT: ' + extension;
			}

			return phone;
		}

	}

    //Displays the info on marker click when using browse results, and displays info in displaylist for each location, based off status
    $.AttachInstructionText = function (marker, item, country, status, index) {

        var latitude = item.Latitude == null ? '' : item.Latitude.trim();
        var longitude = item.Longitude == null ? '' : item.Longitude.trim();
        var title = item.Company == null ? '' : item.Company.trim();
        var address = item.Address == null ? '' : item.Address.trim();
        var city = item.City == null ? '' : item.City.trim();
		var state = item.State == null ? '' : item.State.trim();
		var zip = item.ZipCode == null ? '' : item.ZipCode.trim()
        var phone = item.Phone == null ? '' : item.Phone.trim()
		phone = BuildPhone(phone);
		var distance = item.Distance == null ? '' : item.Distance.trim()
		var straightTrak = "";
		var rft = "";
        var rfe = "";
		var unit = "mi";
		index = index + 1
		if (item.StraightTrak == 'S'){
			straightTrak = '/Portals/0/Images/straighttrak-icon-2x.png'
		}
		if (item.Model == 'Touch' || item.Model == 'Touch,Elite'){
			rft = '/Portals/0/Images/roadforce-touch-icon-2x.png'
		}
        if (item.Model == 'Elite' || item.Model == 'Touch,Elite'){
			rfe = '/Portals/0/Images/elite-icon-2x.png'
		}

		if(country == "ca"){
			 state = item.Prov == null ? '' : item.Prov.trim();
			 zip = item.Postal == null ? '' : item.Postal.trim()
			 unit = "km";
			 distance = distance*1.60934;
			 distance = Math.round(distance);
		}
		if(country == "gr"){
			city = item.Place == null ? '' : item.Place.trim();
			zip = item.PostalCode == null ? '' : item.PostalCode.trim()
			address = item.Street == null ? '' : item.Street.trim();
			unit = "km";
			distance = distance*1.60934;
			distance = Math.round(distance);
		}

        var mapAddress = "https://maps.google.com/?daddr=" + address + "," + city+"," + state;

        var content = '<div id="content" class="infocontent">' +
							'<div id="content" class="addressInfo">' +
								'<div class="distributor-name text"><strong>' + title + '</strong></div>' +
								'<div class="distributor-address1 text">' + address + '</div>' +
								'<div class="distributor-address2 text">' + city +' '+state+ ', '+ zip +'</div>' +
								'<div class="distributor-phone text">' + phone + '</div>' +
								'<a href="'+mapAddress+'" target="_blank">Get Directions</a>'+
								'<div class="distributor-distance text">' + distance + ' '+ unit +' away from your location.</div>' +

							'</div>' +
							'<div id="content" class="images">' +
								'<span class="straightTrakImg"><img src= "'+ straightTrak + '"></span>' +
								'<span class="touchImg"><img src= "'+ rft + '"></span>' +
                                '<span class="eliteImg"><img src= "'+ rfe + '"></span>' +
							'</div>' +
					    '</div>';

		var listContent = '<li id="content listIndex'+index+'Container" class="infocontent">' +
							'<div id="content" class="indexcontentcontainer">' +
								'<div id="content" class="indexcontent">' + index + '</div>' +
							'</div>' +
							'<div id="content" class="addressInfo">' +
								'<div class="distributor-name"><strong>' + title + '</strong></div>' +
								'<div class="distributor-address1">' + address + '</div>' +
								'<div class="distributor-address2">' + city +' '+state+ ', '+ zip +'</div>' +
								'<div class="distributor-phone">' + phone + '</div>' +
								'<a href="'+mapAddress+'" target="_blank">Get Directions</a>'+
								'<div class="distributor-distance">' + distance + ' '+ unit +' away from your location.</div>' +
							'</div>' +
							'<div id="content" class="images">' +
								'<span class="straightTrakImg"><img src= "'+ straightTrak + '"></span>' +
								'<span class="touchImg"><img src= "'+ rft + '"></span>' +
                                '<span class="eliteImg"><img src= "'+ rfe + '"></span>' +
							'</div>' +
							'<div class="floatFix"></div>' +
						'</li>';

        if (status == "displaylist") {
             $(".location-detail").append(listContent);
			 $(".print-locations").append(listContent);
        }
		marker.set('labelContent',index);

        google.maps.event.addListener(marker, 'click', function () {
            infoDisplayCenters.setContent(content);
            infoDisplayCenters.open(map, marker);
        });
    }

	function SetGeoLocation(status, useGps, city, state, stateCode, postalCode, country, countryCode) {
		var ip = getQueryStringParameterByName('ip');
		if (ip === "") ip = undefined;

		var useGeoLocation = true;
		if (useGeoLocation === "") useGeoLocation = undefined;

		var geoLocationRequest = {
			Status: status,
			LocationProvided: useGps,
			UseGeoLocationSetting: useGeoLocation,
			City: city,
			State: state,
			StateCode: stateCode,
			PostalCode: postalCode,
			Country: country,
			CountryCode: countryCode,
			IpAddress: ip
		};

		if (debug) alert("Request sent to web service\n" + JSON.stringify(geoLocationRequest));

		$('#ajaxloadingLocation').show();
		//AJAX request that gets the rep based of the zipcode
		$.crud($.service('/GeoLocation', 'RequestRepsByLocation'), 'POST', geoLocationRequest)
		.done(function (data) {
			var json = JSON.parse(data);
			var wasCookieUsed = json.WasCookieUsed;
			var reps = json.Representatives;
			var countries = json.CountryJsonList;
			var location = {
				city: json.City,
				zip: json.Zip,
				country: json.Country
			}

			if(location.zip == "37722"){
				location.zip = "37753"
			}
			if(distanceStatus == 'good'){
				DisplayRepresentatives(reps, location.zip, countryCode);
			}

		}).fail(function (jqXHR, textStatus, errorThrown) {
			alert("Request failed: " + errorThrown + "\n" + jqXHR.responseText);
		}).complete(function() {
			$('#ajaxloadingLocation').hide();
		});
	}
	function DisplayRepresentatives(reps, zip, country) {

		var section = $('#RepresentativesSection');
		section.empty();

		for (var i = 0; i < reps.length; i++) {
			var rep = reps[i];
			if(rep.FormattedRepType == "Sales Representative"){
				var $businessCard = $('<div>').addClass('representative clearfix');
				var $territory = rep.TerritoryCode;
				if($territory)
				{
					$territory = rep.TerritoryCode.substring(0,6);
				}
				var $rftInterest = $('<p>').addClass('rftInterest').html('Interested in purchasing a Road Force Balancer:');
				var $header = BuildRepHeader($territory,rep.FormattedRepType);
				var $img = BuildProfileImageRep(rep.ImageUrl, rep.FullName, rep.IsDistributor, rep.FormattedRepType, $territory, rep.RepType);
				var $info = (rep.IsDistributor) ? BuildDistributorInfo(rep, zip, country) : BuildRepInfo(rep, zip, country);

				$businessCard.append($rftInterest, $header, $img, $info);
				section.append($businessCard);
			}
		}
	}
	function BuildRepHeader(territory, formattedRepType) {
		var $p = $('<p>').addClass('type');
		var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html('Your ' + formattedRepType + ' is');

		return $('<p>').addClass('type').html('Your ' + formattedRepType + ' is');

	}
	function BuildProfileImageRep(src, name, isDistributor, formattedRepType, territory, repType) {
		var $img = $('<img>').attr('src', src).attr('alt', name);
		var	$a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html($img);
		if(!territory)
		{
			return $('<div>').addClass('left').append($img);
		}
		else if(formattedRepType == "Service Representative" || repType == "Division Manager")
		{
			return $('<div>').addClass('left').append($img);
		}
		else{
			return $('<div>').addClass('left').append($a);
		}

		if(isDistributor) return $img;
	}
	function BuildProfileImage(src, name, isDistributor) {
		var $img = $('<img>').attr('src', src).attr('alt', name);
		if (isDistributor) return $img;

		return $('<div>').addClass('left').append($img);
	}
	function BuildRepInfo(rep, zip, country) {

		var $div = $('<div>').addClass('right');
		var $territory = rep.TerritoryCode;
		var $name = "";
		if(!$territory)
		{
			$name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
		}
		else if(rep.FormattedRepType == "Service Representative" || rep.RepType == "Division Manager")
		{
			$name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
		}

		else{
			$territory = rep.TerritoryCode.substring(0,6);
			$name = BuildWebsiteLinkTerr($territory, rep.FullName);
		}
		var $location = $('<p>').css('margin-bottom', '0').html(rep.Location);
		var $phone = "";
		if (rep.Phone != ''){
			$phone = BuildRepPhone(rep.Phone);
		}
		else{
			$phone = BuildRepPhone(rep.Phone2);
		}
		var $contactUs = BuildContactUsButton(rep.AccountNumber, rep.ContactUsText, zip, false, rep.ContactUsType, country);
		return $div.append($name, $location, $phone, $contactUs);
	}
	function BuildDistributorInfo(rep, zip, country) {
		var $div = $('<div>');
		var $name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
		var $location = $('<p>').css('margin-bottom', '0').html(rep.Location);
		var $city = $('<p>').css('margin-bottom', '0').html(rep.City);
		var $state = $('<p>').css('margin-bottom', '0').html(rep.State);
		var $phone = $('<p>').css('margin-bottom', '0').html(rep.Phone);
		var $phone2 = $('<p>').css('margin-bottom', '0').html(rep.Phone2);
		var $website = BuildWebsiteLink(rep.WebsiteUrl);
		var $contactUs = BuildContactUsButton(rep.AccountNumber, rep.ContactUsText, zip, true, rep.ContactUsType, country);
		return $div.append($name, $location, $city, $state, $phone, $phone2, $website, $contactUs);
	}
	function BuildContactUsButton(accountNumber, contactUsText, zip, isDistributor, contactType, country) {
		var href = String.format("javascript:ContactUsClick('{0}', '{1}', '{2}', '{3}' , '{4}');", accountNumber, zip, isDistributor, contactType, country);

		return $('<a>').addClass('black-button global-contactus').css('margin-top', '5px')
				.attr('href', href)
				.html(contactUsText);
	}
	function BuildRepPhone(phone) {
		var formattedPhone = phone.substring(3);
		var phoneType = phone.substring(0,3);
		var areaCode = phone.substring(3,6);
		var phonePart2 = phone.substring(6,9);
		var phonePart3 = phone.substring(9,13);
		var extension = phone.substring(13,20);

		phone = phoneType + '('+ areaCode +')' +'-'+ phonePart2 +'-'+ phonePart3;
		if (extension != ''){
			phone = phone + ' EXT: ' + extension;
		}

		var $p = $('<p>');
		var $a = $('<a>').attr('href', "tel:" + formattedPhone).css('margin-bottom', '0').html(phone);
		return $p.append($a);
	}
	function BuildWebsiteLink(websiteUrl) {
		var $p = $('<p>');
		var $a = $('<a target="_blank">').attr('href', "http://" + websiteUrl).css('margin-bottom', '0').html(websiteUrl);
		return $p.append($a);
	}
	function BuildWebsiteLinkTerr(territory, name) {
		var $p = $('<p>').css('margin', '0');
		var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html(name);
		return $p.append($a);
	}
});

function ContactUsClick(accountNumber, zip, isDistributor, contactType, country) {

		var acctno = $( ".black-button" ).attr( "data-accountnumber" );
		var isdist = $( ".black-button" ).attr( "data-isdistributor" );
		var cntctype = $( ".black-button" ).attr( "data-contactustype" );

		if(typeof accountNumber != 'undefined'){
			$('#HiddenRepNumber').val(accountNumber);
			$('#IsDistributor').val(isDistributor);
			$('#ContactType').val(contactType);
		}
		else{
			$('#HiddenRepNumber').val(acctno);
			$('#IsDistributor').val(isdist);
			$('#ContactType').val(cntctype);
		}
		$('#Country').val(country);
		$('#Origin').val('GSP9700');
		$('#global-contactusform').modal('show');
	}
