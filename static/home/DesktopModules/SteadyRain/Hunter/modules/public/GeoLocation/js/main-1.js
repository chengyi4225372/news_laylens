﻿var debug = false;

var pathname = window.location.pathname;
pathname = pathname.substring(1, 11);

var zipCodeString = "";
var zipCodeBool = 0;
var checkedOnce = 0;

var userLocation = {};

$(function () {
    debug = $('#HiddenUseDebugMode').val();
    debug = (debug === 'true') ? true : false;

    if (pathname != 'find-a-rep') {
        
        SetGeoLocation('normal', false);

        $('#change-location-link').on('click', function () {
            //$('.select-location').slideToggle();
            if (!($('.select-location').is(':visible'))) {
                $('.select-location').show();
            }else{
                $('.select-location').hide();
            }
        });

        $('#country-select').on('change', function () {
            var selectedCountry = $(this).find('option:selected').val();

            if (selectedCountry === "US" || selectedCountry === "CA") {
                $('#zipcode').show();
            } else {
                $('#zipcode').hide();
            }
        });
        $('.logo').show();
    }
	
	//For the Find-a-Rep page
    else {
        //Show what is needed for "Find-a-Rep", hide whats not needed from the regular geolocation 
        $('.logo:nth-child(2), .location').hide();
        $('#zipcode, .select-location, .findRepSection, .findRepUS, .findRepCA,.findRepWorldwide').show();
        $('#RepresentativesSection').addClass("findarep");
        $('.geolocation').addClass("findarepmodule");
        if ($(window).width() > 992) {
            $('.fillerImage').show();
        }

        //Determines when to show the filler image 
        $(window).resize(function () {
            if ($(window).width() <= 992) {

                var nextElement = $('.findRepSection').next();
                nextElement = nextElement.attr("id");
                var nextElementUS = $('.findRepUS').next();
                nextElementUS = nextElementUS.attr("id");
                var nextElementCA = $('.findRepCA').next();
                nextElementCA = nextElementCA.attr("id");
                if ($('.fillerImage').is(":visible")) {
                    $('.fillerImage').hide();
                }
                if (nextElementUS == 'RepresentativesSection' || nextElementCA == 'RepresentativesSection') {
                }
                else if (nextElement != 'RepresentativesSection') {
                    $("#RepresentativesSection").insertAfter(".findRepSection");
                }
                else {
                    $(".findRepCA, .findRepWorldwide").css("clear", "both");
                }
            }
            if ($(window).width() > 992) {
                $(".findRepCA, .findRepWorldwide").css("clear", "none");
                var nextElement = $('#RepresentativesSection').next();
                nextElement = nextElement.attr("class");
                if ($(".repBoxDisplay")[0]) {
                    if ($('.fillerImage').is(":visible")) {
                        $('.fillerImage').hide();
                    }
                    if (nextElement != 'findRepSection') {
                        $("#RepresentativesSection").insertBefore(".findRepSection")
                    }
                }
                else {
                    $('.fillerImage').show();
                }
            }
        });

        //Makes location box active on click, for styling
        $('.findRepUS').on('click', function () {
            $('.findRepUS').removeClass("unactiveLocationBox").addClass("activeLocationBox");
            $('.findRepCA, .findRepWorldwide').removeClass("activeLocationBox").addClass("unactiveLocationBox");
            $('#zipcode-input-ca').val('');
        });

        $('.findRepCA').on('click', function () {
            $('.findRepCA').removeClass("unactiveLocationBox").addClass("activeLocationBox");
            $('.findRepUS, .findRepWorldwide').removeClass("activeLocationBox").addClass("unactiveLocationBox");
            $('#zipcode-input-us').val('');
        });

        $('.findRepWorldwide').on('click', function () {
            $('.findRepWorldwide').removeClass("unactiveLocationBox").addClass("activeLocationBox");
            $('.findRepUS, .findRepCA').removeClass("activeLocationBox").addClass("unactiveLocationBox");
            $('#zipcode-input-ca, #zipcode-input-us').val('');
        });

        $(document).keypress(function (e) {
            if (e.which == 13) {
                var zip = $('#zipcode-input-us').val();
                if (zip == "") {
                    zip = $('#zipcode-input-ca').val();
                    if (zip == "") {
                        return;
                    }
                    else {

                        var country = 'Canada';
                        var countryCode = 'CA';

                        if (!$('#zipcode-input-ca').is(':visible')) zip = '';

                        SetGeoLocation('find-a-rep', true, "", "", "", zip, country, countryCode);

                        $('#RepresentativesSection').addClass("repBoxDisplay");
                        $('.fillerImage').hide();

                        if ($(window).width() <= 992) {
                            $("#RepresentativesSection").insertAfter(".findRepCA");
                            $(".findRepWorldwide").css("clear", "both");
                        }
                    }
                }
                else {
                    //replace zip for training 
                    if (zip == "37722") {
                        zip = "37753";
                    }

                    var country = 'United States';
                    var countryCode = 'US';

                    if (!$('#zipcode-input-us').is(':visible')) zip = '';

                    SetGeoLocation('find-a-rep', true, "", "", "", zip, country, countryCode);

                    $('#RepresentativesSection').addClass("repBoxDisplay");
                    $('.fillerImage').hide();

                    if ($(window).width() <= 992) {
                        $("#RepresentativesSection").insertAfter(".findRepUS");
                        $(".findRepCA").css("clear", "both");
                    }
                }
            }
        });
        $('#us-submit').on('click', function () {
            var zip = $('#zipcode-input-us').val();
            if (zip == "37722") {
                zip = "37753";
            }

            var country = 'United States';
            var countryCode = 'US';

            if (!$('#zipcode-input-us').is(':visible')) zip = '';

            SetGeoLocation('find-a-rep', true, "", "", "", zip, country, countryCode);

            $('#RepresentativesSection').addClass("repBoxDisplay");
            $('.fillerImage').hide();

            if ($(window).width() <= 992) {
                $("#RepresentativesSection").insertAfter(".findRepUS");
                $(".findRepCA").css("clear", "both");
            }
        });

        $('#ca-submit').on('click', function () {
            var zip = $('#zipcode-input-ca').val();
            var country = 'Canada';
            var countryCode = 'CA';

            if (!$('#zipcode-input-ca').is(':visible')) zip = '';

            SetGeoLocation('find-a-rep', true, "", "", "", zip, country, countryCode);

            $('#RepresentativesSection').addClass("repBoxDisplay");
            $('.fillerImage').hide();

            if ($(window).width() <= 992) {
                $("#RepresentativesSection").insertAfter(".findRepCA");
                $(".findRepWorldwide").css("clear", "both");
            }

        });

    }
    //var functionRan = false;
    $(document).keypress(function (e) {

        if (e.which == 13) {
            //$('#location-submit').trigger('click');
			$('#location-submit').click();
        }
    });

    $('#location-submit').on('click', function (e) {
        
        e.preventDefault();
        var zip = $('#zipcode-input').val();
        var country = $('#country-select').find('option:selected').text();
        var countryCode = $('#country-select').find('option:selected').val();
        zipCodeBool = 1;
        if (countryCode === "US" || countryCode === "CA") {

            if (zip.length < 3) {
                $('.zipError').show();
                return;
            }
            if (zip.length > 3) {
                $('.zipError').hide();
            }
            if (zip == "37722") {
                zip = "37753";
            }
        }

        if (!$('#zipcode-input').is(':visible')) zip = '';

        SetGeoLocation('normal', true, "", "", "", zip, country, countryCode);
		if($('.take-a-class').length){
			SetTrainingLocation("", "", "", zip, country, countryCode);
		}

		
        // SetTrainingLocation("", "", "", zip, country, countryCode);
        // functionRan = true;
        // SetGeoLocation('trigger', true, "", "", "", zip, country, countryCode)


    });
});

function SetGeoLocation(status, useGps, city, state, stateCode, postalCode, country, countryCode) {

    var geoLocationRequest = {
        Status: status,
        LocationProvided: useGps,
        UseGeoLocationSetting: false,
        City: city,
        State: state,
        StateCode: stateCode,
        PostalCode: postalCode,
        Country: country,
        CountryCode: countryCode
    };

    if (debug) alert("Request sent to web service\n" + JSON.stringify(geoLocationRequest));

    $('#ajaxloadingLocation').show();
    $.crud($.service('/GeoLocation', 'RequestRepsByLocation'), 'POST', geoLocationRequest)
        .done(function (data) {
            var json = JSON.parse(data);
            var wasCookieUsed = json.WasCookieUsed;
            var reps = json.Representatives;
            var countries = json.CountryJsonList;
            userLocation = {
                city: json.City,
                zip: json.Zip,
                country: json.Country,
				failure: json.FailureStatus
            }
			
			if(userLocation.failure == "true" ){
                SetGeoLocation(status, useGps, city, state, stateCode, postalCode, country, countryCode)
			}
			else{
				if (userLocation.zip == "37722") {
					userLocation.zip = "37753"
				}
				InitializeLocationPicker(json.CountryCode);

				if (pathname != 'find-a-rep') {
					FillCountryDropdown(countries);
					DisplayLocationInfo(userLocation);

					var selectedCountry = $('#country-select').find('option:selected').val();

					if (selectedCountry === "US" || selectedCountry === "CA") {
						$('#zipcode').show();
					} else {
						$('#zipcode').hide();
					}
				}

				DisplayRepresentatives(reps, userLocation, countryCode);
				if($('.take-a-class').length){
					SetTrainingLocation("", "", "", userLocation.zip, userLocation.country, countryCode);
				}

				if (userLocation.country.toLowerCase() === "united states") DisplayGovernment();
			}

            

        }).complete(function () {
            $('#ajaxloadingLocation').hide();

        });
}

function FillCountryDropdown(countries) {
    $('#country-select').empty();
    for (var i = 0; i < countries.length; i++) {
        var country = JSON.parse(countries[i]);
        var $opt = $('<option>').text(country.Name).attr('value', country.Code);
        if (country.IsSelected === "True") {
            $opt.attr('selected', 'selected');
        }
        $('#country-select').append($opt);
    }
}


function InitializeLocationPicker(countryCode) {
    if (countryCode === null || countryCode === undefined) return;

    countryCode = countryCode;
    if (countryCode === "CA" || countryCode === "US") {
        $('#zipcode').show();
    } else {
        $('#zipcode').hide();
    }
}

function DisplayLocationInfo(userLocation) {
    //console.log(location);

	var	subtitle = userLocation.city;
	var	currentLocation = userLocation.city;
	var	details = userLocation.zip;

	if (userLocation.city === '' && userLocation.zip === '') {
		subtitle = userLocation.country;
		currentLocation = userLocation.country;
	} else if (userLocation.city === '') {
		subtitle = userLocation.country;
		currentLocation = userLocation.zip;
	}
	

    if (currentLocation == null || currentLocation == '') {
        $('#change-location-link').text('Enter your location here:')
		$('.select-location').slideToggle();
    }
    else {
        $('.location #current-location').html(currentLocation);
		if ($('.select-location').is(':visible')) {
			$('.select-location').slideToggle();
		}
	}
	if (subtitle != '' && subtitle != null){
		subtitle = subtitle.replace(/\s+$/, '')
		subtitle = "<span class=cityname>" + subtitle + "</span>"
		$('.location #subtitle').html(details + " (" + subtitle + ")");
	}
	
}

function DisplayRepresentatives(reps, userLocation, country) {
    //console.log(reps);

    var section = $('#RepresentativesSection');
    section.empty();
    for (var i = 0; i < reps.length; i++) {
        var rep = reps[i];
        var countrySelected = $('#country-select').find('option:selected').val();
        var $businessCard = $('<div>').addClass('representative clearfix');
        var $territory = rep.TerritoryCode;
        if ($territory) {
            $territory = rep.TerritoryCode.substring(0, 6);
        }
        var $header = BuildRepHeader($territory, rep.FormattedRepType);
        var $img = BuildProfileImageRep(rep.ImageUrl, rep.FullName, rep.IsDistributor, rep.FormattedRepType, $territory, rep.RepType);
        var $info = '';
        if (pathname == 'find-a-rep') {
            $info = (rep.IsDistributor) ? BuildDistributorInfo(rep, userLocation.zip, country) : BuildRepInfo(rep, userLocation.zip, country);
        }
        else {
            $info = (rep.IsDistributor) ? BuildDistributorInfo(rep, userLocation.zip, countrySelected) : BuildRepInfo(rep, userLocation.zip, countrySelected);
        }
        $businessCard.append($header, $img, $info);
        section.append($businessCard);
    }
	

}

function DisplayGovernment() {
    var section = $('#RepresentativesSection');

    var $businessCard = $('<div>').addClass('representative clearfix');
    var $header = $('<p>').addClass('type').html('Government Sales');
    var $img = BuildProfileImage("/Portals/_default/Skins/Hunter/images/govtrep.png", "Government Sales", false);

    var $div = $('<div>').addClass('right');
    var $contactUs = BuildContactUsButton("", "Contact Now", "", false, "Government", 'US', "Government Rep", "Government Rep", "");
    $div.append($contactUs);

    $businessCard.append($header, $img, $div);
    section.append($businessCard);
}

function DisplayDebugPanel(reps, userLocation, wasCookieUsed) {
    var $section = $('#geoLocationDebugSection').css({ border: "solid 1px #000", margin: "25px 0", padding: "5px 10px" });

    var $h2 = $('<h2>').text("Debug Section");
    var $location = $('<p>').html('city: "' + userLocation.city + '"<br/>zip: "' + userLocation.zip + '"<br/>country: "' + userLocation.country + '"');
    var $cookie = $('<p>').html('Was Cookie Used: ' + wasCookieUsed);

    $section.append($h2, $location, $cookie);
    for (var i = 0; i < reps.length; i++) {
        var rep = reps[i];
        var $rep = $('<p>').html(rep.FormattedRepType + ': "' + rep.FullName + '"');
        $section.append($rep);
    }
}


function BuildRepHeader(territory, formattedRepType) {
    var $p = $('<p>').addClass('type');
    var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html(formattedRepType);

    return $('<p>').addClass('type').html(formattedRepType);

}

function BuildProfileImageRep(src, name, isDistributor, formattedRepType, territory, repType) {
    var $img = $('<img>').attr('src', src).attr('alt', name);
    var $a = $('<a target="_blank">').attr('href', "/" + territory).css('margin-bottom', '0').html($img);
    if (!territory) {
        return $('<div>').addClass('left').append($img);
    }
    else if (formattedRepType == "Service Representative" || repType == "Division Manager") {
        return $('<div>').addClass('left').append($img);
    }
    else {
        return $('<div>').addClass('left').append($a);
    }

    if (isDistributor) return $img;
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
    if (!$territory) {
        $name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
    }
	else if(rep.FormattedRepType == "Service Representative" || rep.RepType == "Division Manager" || rep.RepType == "Canadian (non Regional Manager)") {
        $name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
    }

    else {
        $territory = rep.TerritoryCode.substring(0, 6);
        $name = BuildWebsiteLinkTerr($territory, rep.FullName);
    }
    var repFullName = rep.FullName.replace(/'/g,'');
    //Possible temporary fix for Phil Conlee
    if (rep.AccountNumber == 176210) {
        rep.Location = 'Charleston, SC'
    }
    //
    var $location = $('<p>').css('margin-bottom', '0').html(rep.Location);
    var $phone = "";
    if (rep.Phone != '') {
        $phone = BuildRepPhone(rep.Phone);
    }
    else {
        $phone = BuildRepPhone(rep.Phone2);
    }
    var $contactUs = BuildContactUsButton(rep.AccountNumber, rep.ContactUsText, zip, false, rep.ContactUsType, country, rep.FormattedRepType, repFullName, rep.Email);
    return $div.append($name, $location, $phone, $contactUs);
}

function BuildDistributorInfo(rep, zip, country) {
    var $div = $('<div class="distributorInfo">');
    var $name = $('<p>').css('margin-bottom', '0').html(rep.FullName);
    var $location = $('<p>').css('margin-bottom', '0').html(rep.Location);
    var $city = $('<p>').css('margin-bottom', '0').html(rep.City);
    var $state = $('<p>').css('margin-bottom', '0').html(rep.State);
    var $phone = $('<p>').css('margin-bottom', '0').html(rep.Phone);
    var $phone2 = $('<p>').css('margin-bottom', '0').html(rep.Phone2);
    var $website = BuildWebsiteLink(rep.WebsiteUrl);
    var $contactUs = BuildContactUsButton(rep.AccountNumber, rep.ContactUsText, zip, true, rep.ContactUsType, country, rep.FormattedRepType, rep.FullName, rep.Email);
    return $div.append($name, $location, $city, $state, $phone, $phone2, $website, $contactUs);
}

function BuildContactUsButton(accountNumber, contactUsText, zip, isDistributor, contactType, country, repType, repName, repEmail) {
    var shortRepType = ""
    if(typeof(repType) !== 'undefined' && repType !== null)
    {
        shortRepType = "Contacted " + repType.replace("Representative", "Rep");
    }
    var href = String.format("javascript:ContactUsClick('{0}', '{1}', '{2}', '{3}' , '{4}', '{5}', '{6}', '{7}');", accountNumber, zip, isDistributor, contactType, country, shortRepType, repName, repEmail);

    return $('<a>').addClass('black-button global-contactus gaAutoTrack').css('margin-top', '5px')
            .attr('href', href)
            .html(contactUsText)
            .attr("data-ga-category", "Soft Lead")
            .attr("data-ga-action", shortRepType)
            .attr("data-ga-label", repName);
}

function BuildRepPhone(phone) {
    if (phone != '' && phone != null) {
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

function ContactUsClick(accountNumber, zip, isDistributor, contactType, country, repType, repName, repEmail) {
    var selectedCountry = $('#country-select').find('option:selected').val();

    var pathname = window.location.pathname.substring(1, 5);
    var pathname2 = window.location.pathname.substring(4, 10);
    var pathname3 = window.location.pathname.substring(1);

    var exp = accountNumber.substring(0, 3);

    var acctno = $(".black-button").attr("data-accountnumber");
    var isdist = $(".black-button").attr("data-isdistributor");
    var cntctype = $(".black-button").attr("data-contactustype");

    $('#HiddenRepEmail').val(repEmail)

    $('#Country').val(country);

    if (typeof accountNumber != 'undefined') {
        $('#HiddenRepNumber').val(accountNumber);
        $('#IsDistributor').val(isDistributor);
        $('#ContactType').val(contactType);
    }
    else {
        $('#HiddenRepNumber').val(acctno);
        $('#IsDistributor').val(isdist);
        $('#ContactType').val(cntctype);
    }
    if (country != 'US' && country != 'CA') {
        $('#ContactType').val('Sales');
    }

    if (pathname == "rep/") {
        $('#Origin').val('GoogleRepPage');
    }
    else if (pathname2 == "road-f") {
        $('#Origin').val('GoogleRFT');
    }
    else if (pathname2 == "quick-") {
        $('#Origin').val('GoogleQT');
    }
    else if (pathname2 == "hawkey") {
        $('#Origin').val('GoogleHE');
    }
    else if (pathname2 == "tcr-la") {
        $('#Origin').val('GoogleTCR');
    }
    else if (pathname2 == "rx16-l") {
        $('#Origin').val('GoogleRX16');
    }
    else if (pathname2 == "quickc") {
        $('#Origin').val('GoogleOCL');
    }
    else if (pathname2 == "kefron") {
        $('#Origin').val('BrakeFrontEndHE');
    }
    else if (pathname3 == "demos") {

        $('#Origin').val('Demos');
    }
    else if (country != "US" && country != "CA") {
        $('#Origin').val('International');
        $('#ContactType').val('Sales');
    }
    else {
        $('#Origin').val('WebContact');
    }
    
    if (repType && repName) {
        $('#globalcontactform-submit')
            .attr("data-ga-category", "Lead")
            .attr("data-ga-action", repType)
            .attr("data-ga-label", repName);
    }

    //$('#global-contactusform').modal('show');
    $('#global-contactusform').show();
}