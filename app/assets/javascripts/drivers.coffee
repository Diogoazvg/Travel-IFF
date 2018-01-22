# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  # Drivers
  $("#driver_person_attributes_phone").inputmask(
    { mask: ['(99) 999999999'], removeMaskOnSubmit: true });
  $("#driver_cnh").inputmask(
    { mask: ['99999999999'], removeMaskOnSubmit: true });
  $("#driver_cpf").inputmask(
    { mask: ['999.999.999-99'], removeMaskOnSubmit: true });
  $("#driver_category").inputmask(
    { mask: ['(A)'], removeMaskOnSubmit: true });
