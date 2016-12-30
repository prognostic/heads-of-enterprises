function init_select2(selector){
    $(selector).select2({
    })
}

init_select2(".select");

$("form").on("cocoon:after-insert", function(_, row){
    field = $(row).find(".select");
    init_select2(field);
});

$(function () {
    $('.datepicker').datepicker($.extend({
            inline: true,
            changeYear: true,
            changeMonth: true,
        }
    ));
});

jQuery(function ($) {
    $.datepicker.regional['ru'] = {
        closeText: 'Закрыть',
        prevText: '&#x3c;Пред',
        nextText: 'След&#x3e;',
        currentText: 'Сегодня',
        monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
            'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        monthNamesShort: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
            'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
        dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
        dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
        weekHeader: 'Нед',
        dateFormat: 'dd.mm.yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
    };
    $.datepicker.setDefaults($.datepicker.regional['ru']);
});

$(function(){
    $(document).on('change','#bank_account_status', function(){
        const select_value = $(this).val();
        $('#log_status').val(select_value);

    });
});

$(document).ready(function() {
    $('#director')
        .on('cocoon:before-insert', function() {
            $("#director_from_list").hide();
        })
        .on('cocoon:after-insert', function() {
            /* ... do something ... */
        })
        .on("cocoon:before-remove", function() {
            $("#director_from_list").show();
        })
        .on("cocoon:after-remove", function() {
            /* e.g. recalculate order of child items */
        });
});