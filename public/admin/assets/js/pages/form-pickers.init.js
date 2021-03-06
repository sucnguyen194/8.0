$(document).ready(function () {

    $("#timepicker").timepicker({
        defaultTIme: !1,
        icons: {
            up: "mdi mdi-chevron-up",
            down: "mdi mdi-chevron-down"
        }
    }), $("#timepicker2").timepicker({
        showMeridian: !1,
        icons: {
            up: "mdi mdi-chevron-up",
            down: "mdi mdi-chevron-down"
        }
    }), $("#timepicker3").timepicker({
        minuteStep: 15,
        icons: {
            up: "mdi mdi-chevron-up",
            down: "mdi mdi-chevron-down"
        }
    }), $(".colorpicker-default").colorpicker({
        format: "hex"
    }), $(".colorpicker-rgba").colorpicker(), $("#datepicker").datepicker(), $("#datepicker-autoclose").datepicker({
        autoclose: !0,
        todayHighlight: !0
    }), $("#datepicker-inline").datepicker(), $("#datepicker-multiple-date").datepicker({
        format: "mm/dd/yyyy",
        clearBtn: !0,
        multidate: !0,
        multidateSeparator: ","
    }), $("#date-range").datepicker({
        toggleActive: !0,
        format: "dd/mm/yyyy",

    }), $(".clockpicker").clockpicker({
        donetext: "Done"
    }), $("#single-input").clockpicker({
        placement: "bottom",
        align: "left",
        autoclose: !0,
        default: "now"
    }), $("#check-minutes").click(function (e) {
        e.stopPropagation(), $("#single-input").clockpicker("show").clockpicker("toggleView", "minutes")
    }), $(".input-daterange-datepicker").daterangepicker({
        buttonClasses: ["btn", "btn-sm"],
        applyClass: "btn-success",
        cancelClass: "btn-light"
    }), $(".input-daterange-timepicker").daterangepicker({
        timePicker: !0,
        timePickerIncrement: 30,
        locale: {
            format: "MM/DD/YYYY h:mm A"
        },
        buttonClasses: ["btn", "btn-sm"],
        applyClass: "btn-success",
        cancelClass: "btn-light"
    }), $(".input-limit-datepicker").daterangepicker({
        format: "MM/DD/YYYY",
        minDate: "06/01/2018",
        maxDate: "06/30/2018",
        buttonClasses: ["btn", "btn-sm"],
        applyClass: "btn-success",
        cancelClass: "btn-light",
        dateLimit: {
            days: 6
        }
    }), $("#reportrange span").html(moment().subtract(29, "days").format("MMMM D, YYYY") + " - " + moment().format("MMMM D, YYYY")), $("#reportrange").daterangepicker({
        autoUpdateInput: false,
        alwaysShowCalendars: true,
        format: "MM/DD/YYYY",
        startDate: moment(),
        endDate: moment(),
        // minDate: "01/01/2017",
        // maxDate: "12/31/2020",
        dateLimit: {
            days: 60
        },
        showDropdowns: !0,
        showWeekNumbers: !1,
        timePicker: !1,
        timePickerIncrement: 1,
        timePicker12Hour: !0,
        ranges: {
            'H??m nay': [moment(), moment()],
            'H??m qua': [moment().subtract(1, "days"), moment().subtract(1, "days")],
            'Tu???n n??y': [moment().startOf('week'), moment().endOf('week')],
            "7 ng??y qua": [moment().subtract(6, "days"), moment()],
            "30 ng??y qua": [moment().subtract(29, "days"), moment()],
            "Th??ng n??y": [moment().startOf("month"), moment().endOf("month")],
            "Th??ng tr?????c": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
        },
        opens: "left",
        drops: "down",
        buttonClasses: ["btn", "btn-sm"],
        applyClass: "btn-primary",
        cancelClass: "btn-light",
        separator: " to ",
        locale: {
            applyLabel: "Ch???n",
            cancelLabel: "X??a",
            fromLabel: "T???",
            toLabel: "?????n",
            customRangeLabel: "T??y ch???n",
            daysOfWeek: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
            monthNames: ["Th??ng 1", "Th??ng 2", "Th??ng 3", "Th??ng 4", "Th??ng 5", "Th??ng 6", "Th??ng 7", "Th??ng 8", "Th??ng 9", "Th??ng 10", "Th??ng 11", "Th??ng 12"],
            firstDay: 1
        }
    }, function (e, t, a) {
        console.log(e.toISOString(), t.toISOString(), a), $("#reportrange span").html(e.format("MMMM D, YYYY") + " - " + t.format("MMMM D, YYYY"))
    })

    $('#reportrange').on('apply.daterangepicker', function(ev, picker) {
        $(this).val(picker.startDate.format('DD/MM/YYYY') + ' - ' + picker.endDate.format('DD/MM/YYYY')).trigger('change');

    });

    $('#reportrange').on('cancel.daterangepicker', function(ev, picker) {
        $(this).val('').trigger('change');
    });
});
