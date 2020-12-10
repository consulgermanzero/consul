//= require custom/mjAccordion.js

var ready;
ready = function() {
$(".mj_accordion").mjAccordion()
};

$(document).ready(ready);
$(document).on('turbolinks:load', ready);