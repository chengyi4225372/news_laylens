$(window).load(function () {
    $("#global-contactusform .close").click(function () {
        $('#global-contactusform .required-form-section input').each(function () {
            $(this).prop('required', false);
        });
        $('#global-contactusform').hide();
        $('.modal-rep-section').empty();
        $('.modal-title').text("Contact Us");
        $('#globalcontactform-submit').val('Submit');
    });
    $("#trainer-contactusform .close").click(function () {
        $('#trainer-contactusform .required-form-section input').each(function () {
            $(this).prop('required', false);
        });
        $('#trainer-contactusform').hide();
        $('.modal-rep-section').empty();
        $('.modal-title').text("Contact Us");
        $('#trainer-contactform-submit').val('Submit');
    });
})
var pathname = window.location.pathname;
var searchPathname = pathname.substring(1, 15);
var formChecked = 0;
$(function () {
    $(document.body).on("click", ".global-contactus", function () {
        $(this).closest('.repContainer').clone().appendTo('.modal-rep-section', '#global-contactusform');
        var repName = $('.modal-rep-section .rep-name', '#global-contactusform').text();
        $('.modal-title', '#global-contactusform').text("Contact " + repName);
        $('#globalcontactform-submit').val("Send to " + repName);
        $('.modal-rep-section .type', '#global-contactusform').prependTo('.modal-rep-section .rep-text-slideout', '#global-contactusform');
        $('.required-form-section input', '#global-contactusform').each(function () {
            $(this).prop('required', true);
        });
    });
    $(document.body).on("click", ".trainer-contactus", function () {
        $(this).closest('.repContainer').clone().appendTo('.modal-rep-section');
        var repName = $('.modal-rep-section .rep-name', '#trainer-contactusform').text();
        $('.modal-title', '#trainer-contactusform').text("Contact " + repName);
        $('#trainer-contactform-submit').val("Send to " + repName);
        $('.modal-rep-section .type', '#trainer-contactusform').prependTo('.modal-rep-section .rep-text-slideout', '#trainer-contactusform');
        $('.required-form-section input', '#trainer-contactusform').each(function () {
            $(this).prop('required', true);
        });
        $('#trainer-contactusform').show();
    });
    $(document.body).on("click", ".trainer-no-rep-contactus", function () {
        $(this).closest('.instructor-section').clone().appendTo('.modal-rep-section');
        var repName = $('.modal-rep-section .name', '#trainer-contactusform').text();
        var email = $('.modal-rep-section #trainerEmail').val();
        $('#HiddenRepEmail', '#trainer-contactusform').val(email);
        $('.modal-rep-section .email').empty();
        $('.modal-title', '#trainer-contactusform').text("Contact " + repName);
        $('#trainer-contactform-submit').val("Send to " + repName);
        $('.modal-rep-section .type', '#trainer-contactusform').prependTo('.modal-rep-section .rep-text-slideout', '#trainer-contactusform');
        $('.required-form-section input', '#trainer-contactusform').each(function () {
            $(this).prop('required', true);
        });
        $('#trainer-contactusform').show();
    });
    $(document.body).on("click", ".product-cta-section .global-contactus", function () {
        var matchRep = $(this).attr('href');
        $('.rep-container .repContainer').each(function () {
            if ($('.global-contactus', this).attr('href') == matchRep) {
                $(this).clone().appendTo('.modal-rep-section', '#global-contactusform');
            }
        });
        var repName = $('.modal-rep-section .rep-name', '#global-contactusform').text();
        $('.modal-title', '#global-contactusform').text("Contact " + repName);
        $('#globalcontactform-submit').val("Send to " + repName);
        $('.modal-rep-section .type', '#global-contactusform').prependTo('.modal-rep-section .rep-text-slideout', '#global-contactusform');
        $('.required-form-section input', '#global-contactusform').each(function () {
            $(this).prop('required', true);
        });
    });
    $('.global-contactus').on('click', function () {
        var acctNum = $(this).data('accountnumber');
        $('#HiddenRepNumber').val(acctNum);
        var isDistributor = $(this).data('isdistributor');
        $('#IsDistributor').val(isDistributor);
        var contactType = $(this).data('contacttype');
        $('#ContactType').val(contactType);
        var origin = $(this).data('origin');
        $('#Origin').val(origin);
        var country = $(this).data('country');
        $('#Country').val(country);
        $("#globalcontactform-submit").attr("data-ga-category", $(this).attr("data-ga-category")).attr("data-ga-action", $(this).attr("data-ga-action")).attr("data-ga-label", $(this).attr("data-ga-label"));
        $('#global-contactusform').show();
    });
    $('.contactusform input[type=text]').each(function () {
        $(this).keypress(function (e) {
            if (e.which == 13) {
                return false;
            }
        })
    });
    $('.print-contactus').on('click', function () {
        var acctNum = $(this).data('accountnumber');
        $('#HiddenRepNumber').val(acctNum);
        var isDistributor = $(this).data('isdistributor');
        $('#IsDistributor').val(isDistributor);
        var contactType = $(this).data('contacttype');
        $('#ContactType').val(contactType);
        var origin = $(this).data('origin');
        $('#Origin').val(origin);
        var country = $(this).data('country');
        $('#Country').val(country);
    });
    $('#global-contactusform').find('.required-form-section').each(function () {
        var self = $(this);
        $('input', self).on('blur', function () {
            self.addClass('touched');
            if ($('form').valid()) {
                $('#globalcontactform-submit').removeAttr('disabled');
            } else {
                $('#globalcontactform-submit').attr('disabled', 'disabled');
            }
        });
        $('input', self).on('keypress', function () {
            if ($('form').valid()) {
                $('#globalcontactform-submit').removeAttr('disabled');
            } else {
                $('#globalcontactform-submit').attr('disabled', 'disabled');
            }
        });
    });
    $('#trainer-contactusform').find('.required-form-section').each(function () {
        var self = $(this);
        $('input', self).on('blur', function () {
            self.addClass('touched');
            if ($('form').valid()) {
                $('#trainer-contactform-submit').removeAttr('disabled');
            } else {
                $('#trainer-contactform-submit').attr('disabled', 'disabled');
            }
        });
        $('input', self).on('keypress', function () {
            if ($('form').valid()) {
                $('#trainer-contactform-submit').removeAttr('disabled');
            } else {
                $('#trainer-contactform-submit').attr('disabled', 'disabled');
            }
        });
    });
    $('.contactModal #globalcontactform-submit').on('click', function (e) {
        e.preventDefault();
        $('#globalcontactform-submit').attr('disabled', 'disabled');
        if ($('form').valid()) {
            var $submitButton = $("#globalcontactform-submit");
            SubmitContactForm($submitButton);
        } else {
            validator.focusInvalid();
        }
    });
    $('.contactModal #trainer-contactform-submit').on('click', function (e) {
        e.preventDefault();
        $('#trainer-contactform-submit').attr('disabled', 'disabled');
        if ($('form').valid()) {
            var $submitButton = $("#trainer-contactform-submit");
            SubmitTrainerForm($submitButton);
        } else {
            validator.focusInvalid();
        }
    });
});

function SubmitContactForm($submitButton) {
    $('#globalcontactform-submit').text('Sending');
    var contactus = new Object();
    var internationalDistributorNumber = $('#HiddenRepNumber').val();
    contactus.DistributorAccountNumber = internationalDistributorNumber;
    contactus.IsDistributor = $('#IsDistributor').val();
    contactus.Name = $('#globalcontactform-name').val();
    contactus.Title = "";
    contactus.Phone = $('#globalcontactform-phone').val();
    contactus.CompanyName = $('#globalcontactform-name').val();
    contactus.MailingAddress = $('#globalcontactform-address').val();
    contactus.City = $('#globalcontactform-city').val();
    contactus.State = $('#globalcontactform-state').val();
    contactus.Zipcode = $('#globalcontactform-zip').val();
    contactus.Country = $('#Country').val();
    contactus.EmailAddress = $('#globalcontactform-email').val();
    contactus.Comments = $('#globalcontactform-comment').val();
    contactus.ContactOriginCode = $('#Origin').val();
    contactus.RepEmail = $('#global-contactusform #HiddenRepEmail').val();
    contactus.Type = $('#ContactType').val();
    if (contactus.IsDistributor == "true") {
        contactus.Emailed = true;
    } else {
        if (contactus.ContactOriginCode == 'International') {
            contactus.Emailed = false;
        } else if (contactus.Type == "Government") {
            contactus.Emailed = false;
        } else if (contactus.RepEmail == "") {
            contactus.Emailed = false;
        } else {
            contactus.Emailed = true;
        }
    }
    contactus.Interests = [];
    $('[name="interest"]:checked').each(function (index) {
        contactus.Interests.push($(this).val());
    });
    $.crud($.service('/index', 'mail'), 'POST', contactus).done(function (data, status, xhr) {
        if (status === "success") {
            $.ga.trackElement($submitButton);
            $('#globalcontactform-submit').text('Sent');
            if (pathname != '') {
                alert('Thank you for contacting us!\n\nSincerely,\nLawrence Engineering');
            }
            $('#global-contactusform .required-form-section input').each(function () {
                $(this).prop('required', false);
            });
            $('#global-contactusform').hide();
            ClearContactForm();
        }
    });
}

function SubmitTrainerForm($submitButton) {
    $('#trainer-contactform-submit').text('Sending');
    var contactus = new Object();
    var internationalDistributorNumber = $('#HiddenRepNumber').val();
    contactus.Name = $('#trainer-contactform-name').val();
    contactus.Phone = $('#trainer-contactform-phone').val();
    contactus.MailingAddress = $('#trainer-contactform-address').val();
    contactus.City = $('#trainer-contactform-city').val();
    contactus.State = $('#trainer-contactform-state').val();
    contactus.Zipcode = $('#trainer-contactform-zip').val();
    contactus.Country = $('#Country').val();
    contactus.EmailAddress = $('#trainer-contactform-email').val();
    contactus.Comments = $('#trainer-contactform-comment').val();
    contactus.RepEmail = $('#trainer-contactusform #HiddenRepEmail').val();
    $.crud($.service('/index', 'mail'), 'POST', contactus).done(function (data, status, xhr) {
        if (status === "success") {
             console.log(111);
            $.ga.trackElement($submitButton);
            $('#trainer-contactform-submit').text('Sent');
            $('#trainer-contactusform .required-form-section input').each(function () {
                $(this).prop('required', false);
            });
            $('#trainer-contactusform').hide();
            ClearTrainerForm();
        }
    });
}

function ClearContactForm() {
    $('#global-contactusform').find('.form-group').removeClass('has-success');
    $('#global-contactusform').find('.form-control-feedback').removeClass('fa-check');
    $('#global-contactusform').find('.form-control-feedback').removeClass('fa');
    $('#global-contactusform .modal-rep-section').empty();
    $('#global-contactusform .modal-title').text("Contact Us");
    $('#globalcontactform-submit').val('Submit');
    $('#globalcontactform-name').val('');
    $('#globalcontactform-phone').val('');
    $('#globalcontactform-email').val('');
    $('#globalcontactform-address').val('');
    $('#globalcontactform-city').val('');
    $('#globalcontactform-state').val('');
    $('#globalcontactform-zip').val('');
    $('#globalcontactform-comment').val('');
    $('[name="interest"]').each(function (index) {
        $(this).prop('checked', false);
    });
}

function ClearTrainerForm() {
    $('#trainer-contactusform').find('.form-group').removeClass('has-success');
    $('#trainer-contactusform').find('.form-control-feedback').removeClass('fa-check');
    $('#trainer-contactusform').find('.form-control-feedback').removeClass('fa');
    $('#trainer-contactusform .modal-rep-section').empty();
    $('#trainer-contactusform .modal-title').text("Contact Us");
    $('#trainer-contactform-submit').val('Submit');
    $('#trainer-contactform-name').val('');
    $('#trainer-contactform-phone').val('');
    $('#trainer-contactform-email').val('');
    $('#trainer-contactform-address').val('');
    $('#trainer-contactform-city').val('');
    $('#trainer-contactform-state').val('');
    $('#trainer-contactform-zip').val('');
    $('#trainer-contactform-comment').val('');
}