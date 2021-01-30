//= require custom/mjAccordion.js
//= require turbolinks
//= require custom/textarea_autoexpand


var mj;
mj = function() {
  $(".mj_accordion").mjAccordion()
};

$(function() {
  
  $(document).ready(mj);
  $(document).on('page:load', mj);
});

