$ ->
  if(document.getElementById)
    window.alert = (txt) ->
      createCustomAlert(txt)

  createCustomAlert = (txt) -> swal(txt)
