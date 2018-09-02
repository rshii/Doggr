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

@toggleHeart = (element, userID, breedID) ->
    element.classList.toggle("heart-icon-fav")
    element.classList.toggle("heart-icon")
    # $.post 'http://167.99.181.246/breeds/toggleFavorite',
    #     user_id: userID
    #     breed_id: breedID
    #     (data) -> alert "asdads"

@alertHeart = ->
    alert "Sign in to heart your favorite breeds!"