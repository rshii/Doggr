# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@getBreedImg = (element, breed_name) ->
    getResponse = ->
        $.getJSON("https://dog.ceo/api/breed/"+breed_name+"/images/random")
        .done (response) ->
            getImg(response["message"])
    
    getImg = (url) ->
        element.src = url
    getResponse()
