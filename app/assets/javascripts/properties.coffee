$ ->

  $('a.filepicker').on 'click', (e) ->

    filepicker.pickMultiple(
      {
        mimetype: 'image/*'
        services: ['COMPUTER', 'FACEBOOK', 'INSTAGRAM', 'DROPBOX', 'GOOGLE_DRIVE', 'PICASA', 'URL', 'WEBCAM']
        maxFiles: 10
      }, (Blob) ->

        images = []
        for _, image of Blob
          images.push image.url

        $('#property_images').val(images.join(','))

      , (FPError) ->
        console.log(FPError.toString())
    )

    e.preventDefault()

  $('#property-show #property-images').slick({
    autoplay: true
    autoplaySpeed: 5000
    dots: true
  })
