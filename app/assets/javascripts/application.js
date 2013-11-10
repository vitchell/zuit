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
//= require_tree ./components
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require_self

$(document).ready(function(){
  $("#zu-shopping-bag-count").text( " ("+the_cart.items.length+")");
  $("#zu-section-item-customize").leanModal({ overlay : 0.75 });
  $("#zu-open-sizer").leanModal({ top : 20, overlay : 0.75 });
});

$.cookie.json = true;
var the_cart = $.cookie("shopping_cart");
if( the_cart == null ){
  the_cart = {
    items: []
  };
}

$.fn.serializeObject = function(){
  var o = {};
  var a = this.serializeArray();

  $.each(a, function() {
    if (o[this.name] !== undefined) {
      if (!o[this.name].push) {
        o[this.name] = [o[this.name]];
      }
      o[this.name].push(this.value || '');
    } else {
      o[this.name] = this.value || '';
    }
  });
  return o;
};






function parseInputs(data) {
  var ret = {};
retloop:
  for (var input in data) {
    var val = data[input];

    var parts = input.split('[');       
    var last = ret;

    for (var i in parts) {
      var part = parts[i];
      if (part.substr(-1) == ']') {
        part = part.substr(0, part.length - 1);
      }

      if (i == parts.length - 1) {
        last[part] = val;
        continue retloop;
      } else if (!last.hasOwnProperty(part)) {
        last[part] = {};
      }
      last = last[part];
    }
  }
  return ret;
}