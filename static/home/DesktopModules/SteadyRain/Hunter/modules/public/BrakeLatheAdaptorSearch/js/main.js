var adaptors = [];
$(document).ready(function(){
    $('.displayVehicleResults, .displayMeasuringResults, .inputError').hide();
    $.crud($.service('/brakeLatheAdaptorSearch', 'GetMakes'), 'get')
    .done(function (data, status, xhr) {
        if(data.length != 0){
             $('#makeSelect').append('<option value="0">Select Make</option>');
            $.each(data, function(index, item) {
                $('#makeSelect').append('<option value="' + item.Make.trim() + '">' + item.Make.trim() + '</option>');
            });
        }
    });

    $('#makeSelect').on('change', function() {
        var make = $('#makeSelect').val();
        $('#modelSelect').empty();
        $('#yearSelect').empty();
        $('#optionSelect').empty();
        $('#locationSelect').empty();
        $('#optionSelectContainer').hide();
        $('.displayVehicleResults .results').empty();
        $('.displayVehicleResults').hide();
        $('#locationSelectContainer').hide();
        if(make != 0){
            $.crud($.service('/brakeLatheAdaptorSearch', 'GetModels?&make='+make), 'get')
            .done(function (data, status, xhr) {
                if(data.length != 0){
                    $('#modelSelect').append('<option value="0">Select Model</option>');
                    $.each(data, function(index, item) {
                        $('#modelSelect').append('<option value="' + item.Model + '">' + item.Model.trim() + '</option>');
                    });
                }
            });
        }
    });

    // $('#modelSelect').on('change', function() {
    //     var modelID = $('#modelSelect').val();
    //     $('.displayVehicleResults .results').empty();
    //     $.crud($.service('/brakeLatheAdaptorSearch', 'GetAdaptorsByModel?&id='+modelID), 'get')
    //     .done(function (data, status, xhr) {
    //         if(data.length != 0){
    //             $.each(data, function(index, item) {
    //                 var appendString = '<td><div><img src="/Portals/0/Images/adaptor-search/images/'+ item.Current + '.jpg"></div>'+ item.Current +'</td>';
    //                 if(item.Old !=" "){
    //                     appendString += '<td><div><img src="/Portals/0/Images/adaptor-search/images/'+ item.Old + '.jpg"></div>'+ item.Old +'</td>'
    //                 }
    //                 else{
    //                     appendString += '<td>None</td>'
    //                 }

    //                 appendString +='<td>'+ item.Bolt + '</td>' + '<td>'+ item.LugSize + '</td>';

    //                 $('.displayVehicleResults .results').append(appendString);
    //             });
    //             $('.displayVehicleResults').show();
    //         }
    //     });
    // });

    $('#modelSelect').on('change', function() {
        var model = $('#modelSelect').val();
        var make = $('#makeSelect').val();
        $('.displayVehicleResults .results').empty();
        $('#locationSelect').empty();
        $('#optionSelectContainer').hide();
        $('#yearSelect').empty();
        $('.displayVehicleResults').hide();
        $('#locationSelectContainer').hide();
        $.crud($.service('/brakeLatheAdaptorSearch', 'GetYears?&make='+make+'&model='+model), 'get')
        .done(function (data, status, xhr) {
            if(data.length != 0){
                $('#yearSelect').append('<option value="0">Select Year</option>');
                $.each(data, function(index, item) {
                    $('#yearSelect').append('<option value="' + item.YearText + '" start-year="' + item.Year + '" end-year="' + item.EndYear + '">' + item.YearText.trim() + '</option>');
                });
            }
        });
    });

    $('#yearSelect').on('change', function() {
        var model = $('#modelSelect').val();
        var make = $('#makeSelect').val();
        $('.displayVehicleResults .results').empty();
        $('#locationSelect').empty();
        $('#optionSelectContainer').hide();
        $('.displayVehicleResults').hide();
        var startyear = $('option:selected',this).attr('start-year');
        var endyear = $('option:selected',this).attr('end-year');
        $('#optionSelect').empty();
        $.crud($.service('/brakeLatheAdaptorSearch', 'GetModelOptions?&make='+make+'&model='+model+'&year='+startyear+'&endyear='+endyear), 'get')
        .done(function (data, status, xhr) {
            if(data.length != 0){
                $('#optionSelect').append('<option value="0">Select Option</option>');
                $.each(data, function(index, item) {
                    if(item.Option != '  '){
                        $('#optionSelect').append('<option value="' + item.ID + '">' + item.Option.trim() + '</option>');
                        $('#optionSelectContainer').show();
                    }
                    else{
                        GetAdaptorsByModel(item.ID);
                    }
                });
            }
        });
    });

    $('#optionSelect').on('change', function() {
        var modelID = $('#optionSelect').val();
        $('.displayVehicleResults .results').empty();
        $('#locationSelect').empty();
        $('.displayVehicleResults').hide();
        $('#locationSelectContainer').hide();
        GetAdaptorsByModel(modelID)
    });

    $('#locationSelect').on('change', function() {
        $('.displayVehicleResults .results').empty();
        $('.displayVehicleResults').hide();
        var location = $('#locationSelect').val();
        var appendString
        for(var i = 0; i < adaptors.length; i++){            
            if(adaptors[i].Location == location){
                appendString +='<tr><td>'+ adaptors[i].Status + '</td>';
                appendString += '<td><div><img src="/Portals/0/Images/adaptor-search/images/'+ adaptors[i].PartNumber + '.jpg"></div>'+ adaptors[i].PartNumber +'</td>';
                appendString += '<td>'+ adaptors[i].Location +'</td></tr>';
            }
        }
        $('.displayVehicleResults .results').append(appendString);
        $('.displayVehicleResults').show();
    });
    
    
    
    $('.brakeLatheAdaptorSearch #howToMeasureButton').click(function (){
        $('#displayMeasuringModal').show();
    });

    $('#displayMeasuringModal .modal-close').click(function (){
        $('#displayMeasuringModal').hide();
    });

    $('.brakeLatheAdaptorSearch #checkAdaptorsButton').click(function (){

        $.GetQueryString = function (type,studs,bolt,boltMeasurement,pilot,hub,offset,rotor) {

            var filterQS = "";

            filterQS += '&' + 'type=' + type;
            filterQS += '&' + 'studs=' + studs;
            filterQS += '&' + 'bolt=' + bolt;
            filterQS += '&' + 'boltMeasurement=' + boltMeasurement;
            filterQS += '&' + 'pilot=' + pilot;
            filterQS += '&' + 'hub=' + hub;
            filterQS += '&' + 'offset=' + offset;
            filterQS += '&' + 'rotor=' + rotor;

            return filterQS;
        }

        var type =  $("input:radio[name='latheType']:checked").val();
        var studs = $('#studSelect option:selected').val();
        var bolt = $('#boltInput').val();
        var boltMeasurement = $("input:radio[name='boltMeasurment']:checked").val();
        var pilot = $('#pilotInput').val();
        var hub = $('#hubInput').val();
        var offset = $('#offsetInput').val();
        var rotor = $('#rthicknessInput').val();

        if (offset == ""){
            offset = 0
        }

        if (rotor == ""){
            rotor = 0
        }

        function checkValues(){
            if(type != "" && studs != "" && bolt != "" && boltMeasurement != "" && pilot != "" && hub != ""){
                return true;
            }
            else{
                return false;
            }
        }
        var filter = $.GetQueryString(type,studs,bolt,boltMeasurement,pilot,hub,offset,rotor);

        //AJAX request that gets US locations by zip
        if(checkValues()){
            $('.inputError').hide();
            $('.displayMeasuringResults .results').empty();
            $.crud($.service('/brakeLatheAdaptorSearch', 'SearchByMeasuring?' + filter), 'get')
            .done(function (data, status, xhr) {
                    if(data.length != 0){
                        $.each(data, function(index, item) {
                        var appendString = '<td class="part"><div><img src="/Portals/0/Images/adaptor-search/images/'+ item.PartNumber + '.jpg"></div>'+ item.PartNumber +'</td>';
                        appendString += '<td><b>Warning!</b> This adaptor may fit based on measurements you entered. It is NOT guaranteed to fit your vehicle application. Slight variations in measurements can invalidate fit.</td>'
                        

                        $('.displayMeasuringResults .results').append(appendString);
                    });
                    $('.displayMeasuringResults').show();
                }
            });
        }
        else{
            $('.inputError').show();
        }
        
    });
});

function GetAdaptorsByModel(id){

    $.crud($.service('/brakeLatheAdaptorSearch', 'GetAdaptorsByModel?&id='+id), 'get')
    .done(function (data, status, xhr) {
        if(data.length != 0){
            adaptors = data;
            var appendString = "";
            var locationArray = [];
            $.each(adaptors, function(index, item) {
                               
                if(item.Status == 'C'){
                    item.Status = 'Current';
                    item.PartNumber = item.PartNumber.replace(/.$/,"1");
                }
                else{
                    item.Status = 'Obsolete';
                }

                if(item.Location == 'B'){
                    item.Location = 'Both';
                }
                else if (item.Location == 'F'){
                    item.Location = 'Front';
                }
                else if (item.Location == 'R'){
                    item.Location = 'Rear';
                }

                if(locationArray.indexOf(item.Location) == -1){
                    locationArray.push(item.Location);
                }
                appendString +='<tr><td>'+ item.Status + '</td>';
                appendString += '<td><div><img src="/Portals/0/Images/adaptor-search/images/'+ item.PartNumber + '.jpg"></div>'+ item.PartNumber +'</td>';
                appendString += '<td>'+ item.Location +'</td></tr>';
            });
            if(locationArray.indexOf('Front') > -1 && locationArray.indexOf('Rear') > -1){
                $('#locationSelect').append('<option value="0">Select Location</option>');
                for(var i = 0; i < locationArray.length; i++){
                    $('#locationSelect').append('<option value="' + locationArray[i] + '">' + locationArray[i] + '</option>');
                }
                $('#locationSelectContainer').show();
            }
            
            else{
                $('.displayVehicleResults .results').append(appendString);
                $('.displayVehicleResults').show();
                $('#locationSelectContainer').hide();
            }
        }
    });

}