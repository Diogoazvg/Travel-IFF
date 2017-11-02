# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('input[date="daterange"]').daterangepicker {
    singleDatePicker: true
    showDropdowns: true
  locale: {
        format: "DD/MM/YYYY",
      },
    }
  return
return