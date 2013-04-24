// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//My signed-in user dropdown wasn't working (the link was turning grey
//but the dropdown itself didn't appear.  Finally found the answer on 
//SO, and I had to move jquery below bootstrap in the order below.  No
//idea why that worked, but it did.  
//
//= require jquery_ujs
//= require bootstrap
//= require jquery
//= require_tree .
