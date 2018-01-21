jQuery ->
  # Drivers
  $("#user_phone").inputmask(
    { mask: ['(99) 999999999'], removeMaskOnSubmit: true });
  $("#user_cpf").inputmask(
    { mask: ['999.999.999-99'], removeMaskOnSubmit: true });