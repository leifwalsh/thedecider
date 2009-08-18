// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var remove_item = function() {
    $(this).parent().parent().hide();
};

var on_submit = function() {
    $(this).find('.inputcell:hidden').remove();
    return true;
};

var bind_all = function() {
    $('#items .remove').live('click', remove_item);
    $('form').submit(on_submit);
};

$(document).ready(bind_all);
