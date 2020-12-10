//= require custom/mjAccordion.js
//= require turbolinks

$(function() {
  $('.mj_accordion').mjAccordion();
});

$(document).on('turbolinks:load', function() {
  $('.mj_accordion').mjAccordion();
});
