//= require custom/mjAccordion.js
//= require turbolinks


var mj;
mj = function() {
  $(".mj_accordion").mjAccordion()
};

$(function() {
  "use strict";

  Turbolinks.enableProgressBar();

  $(document).ready(initialize_modules);
  $(document).on("page:load", initialize_modules);
  $(document).on("ajax:complete", initialize_modules);
  $(document).ready(mj);
  $(document).on('page:load', mj);
});

