require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require('jquery')

//require("packs/html_sortable.js")

import '../stylesheets/application'

console.log('Hello from application.js');

$(document).ready(function(){
  if (jQuery) {
    console.log("Yeah! JQuery is loaded.");
  } else {
    console.log("JQuery is not loaded.");
  }
});
