// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

jQuery(document).foundation();
hljs.initHighlightingOnLoad();
$(document).ready(function () {
  $('a').click(function() {
    var elementClicked = $(this).attr("href");
    $('.top-bar').find('.active').removeClass('active');
    $(this).parent('li').addClass('active');
    var destination = $(elementClicked).offset().top;
    $("html:not(:animated),body:not(:animated)").animate({ scrollTop: destination+10}, 500 );
    return false;
  });

  $('main section').waypoint( function(direction) {
    var $active = $(this);

    /* The waypoint is triggered at the top of each list item representing a dial section. When triggering in the down direction we want to use the dial section the waypoint is attached to. But in the up direction we want to use the previous dial section. */
    if (direction === "up") {
      $active = $active.prev();
    }

    /* If we triggered in the up direction and the result from 'prev' came back with an empty set of elements, it means we were on the first element in the list, and we should just use the original element. */
    if (!$active.length) {
      $active = $(this);
    }
    var id = $active.attr('id');
    $('.top-bar').find('.active').removeClass('active');
    $('.top-bar').find("#" + id + "-link").addClass('active');
    $('.top-bar').find("#" + id + "-link").parents('.has-dropdown').addClass('active');

  });
});
