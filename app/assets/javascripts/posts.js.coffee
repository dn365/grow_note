# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'click', '#add-pictrues-button', ->
  # $('#add-pictrues-button').click ->
    $.get "/img_upload", (data) ->
      if data
        $('#img-upload-form').html(data)
        $('#img-upload-form').modal("show")
