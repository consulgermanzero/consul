//= require custom/mjAccordion.js
//= require turbolinks

var mj;
mj = function() {
$(".mj_accordion").mjAccordion()
};

$(document).ready(mj);
$(document).on('turbolinks:load', mj);