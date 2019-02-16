; $(function () {
    var $container = $('.steadyrain.coursedetail');
    var pageSize = 2;
    var course = {
        Name: '',
        Cost: '',
        Length: '',
        Prerequisites: '',
        LearningObjectives: ''
    };
    var courseVM = null;
    var scheduleVM = null;

    $('.filterCountry', '#locations').on('change', function () {

        if ($(this).val() == "") {
            $('.filterState', '#locations').html("<option value=''>Select A State/Province</option>");
            $('.filterState', '#locations').val('');
            $('.filterState', '#locations').attr('disabled', true);
        } else {
            $('.filterState', '#locations').attr('disabled', false);

            $.FilterStateByCountry($(this).val());
            /*$.crud($.service('/trainingcenters', 'statesbycountry', $(this).val()), 'get')
            .done(function (data, status, xhr) {
                $('.filterState', '#locations').html("<option value=''>Select A State/Province</option>");

                $.each(data, function (index, item) {
                    $('.filterState', '#locations').append("<option value='" + item.State + "'>" + item.State + "</option>");
                });
            });*/
        }
    });


    $('.schedules .filterMonth', $container).on('change', function () {

        $.FilterLocationByMonthYear($(this).val(),$('.schedules .filterYear',$container).val());
    });


    $('.schedules .filterYear', $container).on('change', function () {

        $.FilterLocationByMonthYear($('.schedules .filterMonth', $container).val(), $('.schedules .filterYear', $container).val());
    });

    $.FilterStateByCountry = function (country) {
        var filteredArray = new Array();
       
        var dupes = {};

        $.each(schedules, function (index, schedule) {

            if (country != null || country != "") {

                if(schedule.TrainingCenter.Country==country)
                    if (!dupes[schedule.TrainingCenter.State]) {
                        dupes[schedule.TrainingCenter.State] = true;
                        filteredArray.push(schedule.TrainingCenter.State);
                    }
                
            }
        });

        if(filteredArray.length>0){
        filteredArray = filteredArray.sort(function (a, b) {
            return a > b ? 1 : -1;
        });
        $('.locations .filterState', $container).html('');
        $('.locations .filterState', $container).html("<option value=''>Select A State/Province</option>");

         $.each(filteredArray, function (index, item) {
            $('.locations .filterState', $container).append("<option value='" + item + "'>" + item + "</option>");
         });
        }
    }

    $.FilterLocationByMonthYear = function (month, year) {
        var filteredArray = new Array();
        //var month = $(this).val();
        var dupes = {};

        $.each(schedules, function (index, schedule) {
            
            if ((month == null || month == "") && (year == null || year == "")) {
                if (!dupes[schedule.TrainingCenter.Id]) {
                    dupes[schedule.TrainingCenter.Id] = true;
                    filteredArray.push(schedule.TrainingCenter);
                }
            } else {
                if ((month != null || month != "") && moment(schedule.StartDate).month() == month) {
                    if (!dupes[schedule.TrainingCenter.Id]) {
                        dupes[schedule.TrainingCenter.Id] = true;
                        filteredArray.push(schedule.TrainingCenter);
                    }
                }
                if ((year != null || year != "") && moment(schedule.StartDate).year() == year) {
                    if (!dupes[schedule.TrainingCenter.Id]) {
                        dupes[schedule.TrainingCenter.Id] = true;
                        filteredArray.push(schedule.TrainingCenter);
                    }
                }
            }
        });



        filteredArray = filteredArray.sort(function (a, b) {
            return a.City > b.City ? 1 : -1;
        });
        $('.schedules .filterLocation', $container).html('');
        $('.schedules .filterLocation', $container).html("<option value=''>Select A Location</option>");

        $.each(filteredArray, function (index, item) {
            $('.schedules .filterLocation', $container).append("<option value='" + item.Id + "'>" + item.City + ", " + item.State + "</option>");
        });
        if ($('.schedules .filterLocation option[value="' + scheduleVM.filterLocationVal() + '"]').length == 0) {
            $('.schedules .filterLocation', $container).val('');
            scheduleVM.filterLocationVal('');
        } else {
            $('.schedules .filterLocation', $container).val(scheduleVM.filterLocationVal());

        }
    }

    var CoursesViewModel = function (data) {
        // Data
        var self = this;
        self.courses = ko.observableArray(data.event);
        self.sortKey = ko.observable();
        self.sortCourses = function(header, event){
            
            switch(self.sortKey()){
                case 'ascending':
                    self.courses.sort(function (a, b) {
                        return a.Show > b.Show;
                    });
                    break;
                case 'descending':
                    self.courses.sort(function (a, b) {
                        return a.Show < b.Show;
                    });
                    break;
            }
        };
    }


    var ScheduleViewModel = function (data) {
        var self = this;

        self.schedules = ko.observableArray(data);

        self.filterMonthVal = ko.observable();
        self.filterYearVal = ko.observable();
        self.filterLocationVal = ko.observable();
  
        self.DisplayCost = function (model) {
            if (model!=null && model.Cost != null)
                return '$ ' + parseFloat(model.Cost).toFixed(2);
            else {
                return '';
            }
        }

        self.CalculateCountry = function (country) {
            if (country === 'US') {
                return 'US';
            } else if (country === 'CA') {
                return 'Canada';
            } else {
                return '';
            }
        }

        self.filteredSchedules = ko.computed(function () {

            if (self.filterMonthVal() || self.filterYearVal() || self.filterLocationVal()) {
                var filterArray = self.schedules();
                if (self.filterMonthVal()) {
                    filterArray = ko.utils.arrayFilter(filterArray, function(schedule) {
                        if (moment(schedule.StartDate).month() == self.filterMonthVal())
                            return schedule;
                    });
                }
                if (self.filterYearVal()) {
                    filterArray = ko.utils.arrayFilter(filterArray, function(schedule) {
                        if (moment(schedule.StartDate).year() == self.filterYearVal())
                            return schedule;
                    });
                }
                if (self.filterLocationVal()) {
                    filterArray = ko.utils.arrayFilter(filterArray, function(schedule) {
                        if (schedule.TrainingCenter.Id == self.filterLocationVal())
                            return schedule;
                    });
                }
                return filterArray;
            } else {
                return self.schedules();
            }
        });
    }

    var CourseViewModel = function (data) {
        var self = this;
        self.course = ko.observable(data);
    }
    $.Initialize = function () {

        $('select[data-property]').each(function () {
            $(this).prepend('<option value="" selected>Select A ' + $(this).data('property') + '</option>');
        });

        if (courseVM == null)
        {
            courseVM= new CourseViewModel(course);
            //ko.applyBindings(courseVM);
        }
        if (scheduleVM == null)
        {
            $('.schedulesListView').html('');
            scheduleVM = new ScheduleViewModel(schedules);
            ko.applyBindings(scheduleVM, document.getElementById('schedules'));
        }

    }

    $.Initialize();
});