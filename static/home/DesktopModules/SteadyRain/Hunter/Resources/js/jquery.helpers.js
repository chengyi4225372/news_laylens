var isMobile = {
    Android: function () {
        return navigator.userAgent.match(/Android/i);
    }, BlackBerry: function () {
        return navigator.userAgent.match(/BlackBerry/i);
    }, iOS: function () {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    }, Opera: function () {
        return navigator.userAgent.match(/Opera Mini/i);
    }, Windows: function () {
        return navigator.userAgent.match(/IEMobile/i);
    }, any: function () {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};
String.format = function () {
    var s = arguments[0];
    for (var i = 0; i < arguments.length - 1; i++) {
        var reg = new RegExp("\\{" + i + "\\}", "gm");
        s = s.replace(reg, arguments[i + 1]);
    }
    return s;
}
$(function () {
    $.service = function () {
       // var base = '/DesktopModules/SteadyRain/Services/API';
        var base = '/index';
        if (arguments.length === 0)
            return base;
        return base + $.map(arguments, function (prop) {
            return prop;
        }).join('/');

    };
    $.crud = function (url, type, obj) {
        return $.ajax({
            url: url,
            type: type || 'get',
            data: obj ? JSON.stringify(obj) : null,
            contentType: 'application/json; charset=utf-8',
            processData: false,
            dataType: 'json'
        });
    };
});

function stringifyDataObjectDevUseOnly(obj) {
    for (var key in obj) {
        var item = obj[key];
        for (var prop in item) {
            if (item.hasOwnProperty(prop)) {
                if (item[prop] instanceof Array) {
                    console.log(prop + ' : ' + JSON.stringify(item[prop]));
                } else {
                    console.log(prop + ' : ' + item[prop]);
                }
            }
        }
    }
}

function getQueryStringParameterByName(key) {
    key = key.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + key + "=([^&#]*)"), results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function setupJqteValidation(id) {
    $('#' + id).closest(".jqte").find(".jqte_editor").on('keyup', function () {
        var rteText = $(".jqte_editor").html();
        if (rteText.length >= 0) {
            $('form').valid();
        }
    });
}

function removeValidateHighlights(jqteId) {
    var form = $('form');
    form.find('.form-group').removeClass('has-success').removeClass('has-error');
    form.find('span.form-control-feedback').removeClass('fa fa-remove').removeClass('fa fa-check');
    if (jqteId != null) {
        $('#' + jqteId).jqteVal('');
        $('#' + jqteId).closest(".jqte").css('border', '1px solid #000');
    }
}