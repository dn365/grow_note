# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  # Dropzone.autoDiscover = false
  # try
  #   myDropzone = new Dropzone "#dropzone", {
  #     paramName: "pic",
  #     maxFilesize: 0.5,
  #     addRemoveLinks: false
  #   }
  # catch
  #   alert "Upload does not support older browsers!"


  $(document).on 'click', '#pictrue-upload-button', ->
    modal_div = $('#pictrue-upload-modal')
    modal_div.modal("show")

  $(document).on 'click', '.pictrue-upload-close', ->
    location.reload()

  # $(document).on 'click', '#pictrue-delete-button', ->
  #   # alert $('#pic_').val()
  #   ids = []
  #   $("input[name='pic[]']:checked").each ->
  #     ids.push this.value
  #   if ids.length > 0
  #     $.ajax(
  #       url: "/pictrues_delete_all",
  #       type: "DELETE",
  #       data: {'ids': ids},
  #       success: (data) ->
  #         if data
  #           alert "success"
  #     )
  #   else
  #     alert "Not Found Selected Pictrues ..."
