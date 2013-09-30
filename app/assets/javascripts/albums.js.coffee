# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#new_picture').fileupload
		dataType: "script"
		add: (e, data) ->
			types = /(\.|\/)(gif|jpe?g|png)$/i
			file = data.files[0]
			if types.test(file.type) || types.test(file.name)
				data.submit()
			else
				alert("#{file.name} is not a gif, jpeg, or png image file")
		progressall: (e, data) ->
			progress = parseInt(data.loaded / data.total * 100 , 10)
			$('#progress .bar').css( 'width', progress.toPrecision(15) + '%' )
		done: (e, data) ->