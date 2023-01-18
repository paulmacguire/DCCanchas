// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require jquery
//= require jquery_ujs

import "controllers"

import flatpickr from "flatpickr"
require("flatpickr/dist/themes/dark.css");

document.addEventListener("turbolinks:load", () => {
    flatpickr("[data-behavior='flatpickr']", {
        altInput: true,
        altForm: "F j, Y",
        dateFormat: "Y-m-d",
        minDate: "today",
        defaultDate:"today",
    })
})

document.addEventListener("turbolinks:load", () => {
    flatpickr("[data-behavior='flatpickr2']", {
        altInput: true,
        enableTime: true,
        dateFormat: "H:i",
        noCalendar: true,
        time_24hr: true,
        defaultDate: "08:00",
        minTime: "08:00",
        maxTime: "23:00",
    })
})



