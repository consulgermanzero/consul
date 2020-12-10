//= require custom/mjAccordion.js
$(function() {
  $('.mj_accordion').mjAccordion();
});

$(document).on('turbolinks:load', function() {
  $('.mj_accordion').mjAccordion();
});