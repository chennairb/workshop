handle_form_response = (form) ->
  the_modal = form.parents(".modal")
  notice = $("#notice-modal")
  form.on "ajax:success", (event, data, status, xhr) ->
    the_modal.modal "hide"
    notice.modal "show"

  form.on "ajax:error", (event, xhr, status, error) ->
    error_str = xhr.responseText
    $(".form-notice").html error_str

  form.on "ajax:complete", (event) ->

ready = ->
  handle_form_response $("#participant-form")
  
$(document).ready ready
$(document).on "page:load", ready
