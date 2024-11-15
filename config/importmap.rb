# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@rails/ujs", to: "https://cdn.skypack.dev/@rails/ujs@7.0.0"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
pin "jmap-jquery-plugin", to: "jmap/jmap-plugin.js"
pin "custom/spots_show", to: "custom/spots_show.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/custom",      under: "custom"
pin_all_from "app/javascript/views",       under: "views"
