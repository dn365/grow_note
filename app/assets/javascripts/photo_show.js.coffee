$ ->
  # $(document).on "change", "#post_pictures_attributes_0_pic", ->
  $(document).on "change", ".post_pictures_attributes_pic", ->
    console.log("run Photo clear")
    $("#uploadPreview").empty()
    if !!this.files
      files = this.files
    else
      files = []

    if !files.length || !window.FileReader
      return
    # li_arr = []
    $.each files, (file_size) ->
      if /^image/.test( files[file_size].type)
        reader = new FileReader()
        reader.readAsDataURL(files[file_size])
        reader.onloadend = () ->
          $("#uploadPreview").append "<li class='list-group-item'><img src='"+this.result+"' class='img-rounded' width='80' height='50'></li>"
