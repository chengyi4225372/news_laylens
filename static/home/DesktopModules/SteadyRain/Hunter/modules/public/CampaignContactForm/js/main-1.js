function ContactUsModel(voucherCode) {
    this.FirstName = "";
    this.LastName = "";
    this.EmailAddress = "";
    this.CompanyName = "";
    this.CountryId = 0;
    this.Country = "";
    this.MailingAddress = "";
    this.City = "";
    this.StateId = 0;
    this.State = "";
    this.Zipcode = "";
    this.Phone = "";
    this.Comments = "";
    this.Contacting = "";
    this.ContactingName = "";
    this.OriginCode = "";
    this.NeedsEquipmentQuote = false;
    this.NeedsEquipmentDemo = false;
    this.InterestInProductSegmentIds = "";
    this.InterestInProductSegments = "";
    this.VoucherCode = voucherCode;
    this.IsSubscribed = true;


    this.fillFromDatabase = function (obj) {
        this.FirstName = obj.FirstName;
        this.LastName = obj.LastName;
        this.EmailAddress = obj.EmailAddress;
        this.CompanyName = obj.CompanyName;
        this.CountryId = obj.CountryId;
        this.Country = obj.Country;
        this.MailingAddress = obj.MailingAddress;
        this.City = obj.City;
        this.StateId = obj.StateId;
        this.State = obj.State;
        this.Zipcode = obj.Zipcode;
        this.Phone = obj.Phone;
        this.Comments = obj.Comments;
        this.Contacting = "";
        this.ContactingName = "";
        this.OriginCode = "";
        this.NeedsEquipmentQuote = false;
        this.NeedsEquipmentDemo = false;
        this.InterestInProductSegmentIds = "";
        this.InterestInProductSegments = "";
        this.VoucherCode = obj.VoucherCode;
        this.IsSubscribed = true;
    }

    this.post = function () {
        //$('#ajaxloadingPostContactUs').show();
        var self = this;
        $.crud($.service('/Notifications'), 'post', self)
        .done(function () {
            $('#contact-form').hide();
            $('#thankyou-message').show();
            window.scrollTo(0, 0);

            // send email to Hunter
            if (self.Contacting !== '') {
                $.crud($.service('/Notifications', 'EmailHunterContact'), 'post', self);
            }

            //$('#ajaxloadingPostContactUs').hide();
        });
    }
}

$(function () {
    $('#voucher-help-modal').hide();
    // stops form submit when pressing enter key on input
    $('input').bind('keypress', function (event) {
        if (event.keyCode == 13) {
            event.preventDefault();
        }
    });

    var viewModel = {
        contactUs: ko.observable(new ContactUsModel()),
        countryList: ko.observableArray([]),
        stateProvinceList: ko.observableArray([]),
    };

    ko.applyBindings(viewModel);

    $('#voucher-help').on('click', function () {
        $('#voucher-help-modal').show();
    });

    $('#country').on('change', function () {
        var countryId = $(this).val();
        $.fillStateDropdown(countryId, 0);
    });

    $('#check-demo, #check-quote').on('change', function () {
        $.showSegments();
    });

    $('#clearButton').on('click', function () {
        location.reload();
        window.scrollTo(0, 0);
    });
	
	$('select#contact>option:eq(2)').prop('selected', true);

    $('#submitButton').on('click', function () {
        if ($('form').valid()) {
            // package up additional fields for contactUs object
			viewModel.contactUs().Contacting = $('#contact option:selected').val();
            viewModel.contactUs().ContactingName = $('#contact option:selected').text();
            viewModel.contactUs().Country = $('#country option[value="' + viewModel.contactUs().CountryId + '"]').text();
            viewModel.contactUs().State = $('#state-province option[value="' + viewModel.contactUs().StateId + '"]').text();
            viewModel.contactUs().InterestInProductSegments = $.getInterestInProductSegments();
            viewModel.contactUs().OriginCode = $('#HiddenOriginCodeTerm').val();
            viewModel.contactUs().InterestInProductSegmentIds = $.getInterestInProductSegmentIds();

            viewModel.contactUs().post();

        } else validator.focusInvalid();
    });

    $('#voucher-lookup').on('click', function () {
        var voucherCode = $('#voucher').val().trim();

        // will only validate voucher code when provided one
        if (voucherCode === '') {
            $('#voucher').rules('remove');
        } else {
            $('#voucher').rules('add', {
                validVoucherCode: true
            });

            //$('#ajaxloadingPostContactUs').show();
            $.crud($.service('/CampaignContactForm', 'GetVoucherData', voucherCode))
            .done(function (data) {
                if (data == null) {
                    // invalid voucher code used; present error
                    $('#voucher').data('valid', 'false');
                    viewModel.contactUs(new ContactUsModel(voucherCode));
                } else {
                    $('#voucher').data('valid', 'true');
                    var contactUsModel = new ContactUsModel();
                    contactUsModel.fillFromDatabase(data);
                    if (contactUsModel.CountryId !== '') {
                        $.fillStateDropdown(contactUsModel.CountryId, contactUsModel.StateId);
                    }
                    viewModel.contactUs(contactUsModel);
                }
            }).complete(function() {
                $('form').valid();
                validator.focusInvalid();
                //$('#ajaxloadingPostContactUs').hide();
            });
        }
    });

    jQuery.validator.addMethod("validVoucherCode", function (value, element) {
        var isValid = $(element).data('valid');
        return isValid === "true";
    }, "The entered voucher code was not found.");
	
	jQuery.validator.addMethod("validContact", function (value, element) {
        var isValid = $(element).data('valid');
        return isValid === "true";
    }, "Please select a contact.");
	
    var validator = $('form').validate({
        rules: {
            'first-name': { required: true },
            'last-name': { required: true },
            email: { required: true },
            company: { required: true },
            country: { required: true },
            address: { required: true },
            city: { required: true },
            'state-province': { required: true },
            'postal-code': { required: true },
            phone: { required: true },
            contact: { required: true, validContact: true }
        },
        highlight: function (obj) {
            $(obj).closest('.form-group').removeClass('has-success').addClass('has-error');
            $(obj).closest('.form-group').find('span.form-control-feedback').removeClass('glyphicon glyphicon-ok').addClass('glyphicon glyphicon-remove');
        },
        unhighlight: function (obj) {
            $(obj).closest('.form-group').removeClass('has-error').addClass('has-success');
            $(obj).closest('.form-group').find('span.form-control-feedback').removeClass('glyphicon glyphicon-remove').addClass('glyphicon glyphicon-ok');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function (error, obj) {
            if (obj.parent('.input-group').length) {
                error.insertAfter(obj.parent());
            } else {
                error.insertAfter(obj);
            }
        }
    });

    // populate countries
    $.crud($.service('/CampaignContactForm', 'GetCountries'))
        .done(function (data) {
            var countries = [];

            data.forEach(function (item) {
                if (item.Name == "United States") {
                    countries.unshift(item);
                } else {
                    countries.push(item);
                }
            });

            var blank = { Id: "", Name: '-- Select A Country --' };
            countries.unshift(blank);
            viewModel.countryList(countries);

            var stateProvinces = [];
            var blankStateProvince = { Id: "", Name: '-- Select A State/Province -- ' };
            stateProvinces.push(blankStateProvince);
            viewModel.stateProvinceList(stateProvinces);
        });

    $.showSegments = function() {
        var demoChecked = $('#check-demo').is(':checked');
        var quoteChecked = $('#check-quote').is(':checked');

        if (demoChecked || quoteChecked) {
            $('#product-segment-list').slideDown();
        } else {
            $('#product-segment-list').slideUp();
        }
    }

    $.getInterestInProductSegmentIds = function() {
        var chkItems = "";
        $('#product-segment-list').find('input:checkbox').each(function () {
            if ($(this).is(':checked')) {
                chkItems = (chkItems === "") ? this.id : chkItems + "," + this.id;
            }
        });
        return chkItems;
    }

    $.getInterestInProductSegments =  function() {
        var chkItems = "";
        $('#product-segment-list').find('input:checkbox').each(function () {
            if ($(this).is(':checked')) {
                chkItems = (chkItems === "") ? $(this).data('name') : chkItems + ", " + $(this).data('name');
            }
        });
        return chkItems;
    }

    $.fillStateDropdown = function(countryId, defaultId) {
        $.crud($.service('/CampaignContactForm', 'GetStateProvinces', countryId))
            .done(function (data) {
                var stateProvices = [];

                data.forEach(function (item) {
                    stateProvices.push(item);
                });

                var blank = { Id: "", Name: '-- Select A State/Province -- ' };
                stateProvices.unshift(blank);
                viewModel.stateProvinceList(stateProvices);
            })
            .complete(function() {
            $('#state-province').val(defaultId);
        });
    }
});