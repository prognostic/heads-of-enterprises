function init_select2(selector){
    $(selector).select2({
    })
};

init_select2(".select")

$("form").on("cocoon:after-insert", function(_, row){
    field = $(row).find(".select")
    init_select2(field);
});

$(function() {
    $('.datepicker').datepicker();
});