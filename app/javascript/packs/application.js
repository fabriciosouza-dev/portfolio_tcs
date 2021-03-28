// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
Rails.start()
Turbolinks.start()
ActiveStorage.start()
global.$ = require('jquery')
global.toastr = require("toastr")
require('bootstrap')
import "@fortawesome/fontawesome-free/css/all.css";
require('popper.js')
require('jquery-mask-plugin')
require('jquery.easing')
require('magnific-popup')
require('packs/scripts.js')