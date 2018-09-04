class FavoritesController < ApplicationController
    before_action :require_login
    def index
        @favorites = current_user.breeds
    end
    
    def toggleFavorite
        breed = Breed.find(params[:breed_id])
        if current_user.breeds.exists?(breed.id)
            current_user.breeds.destroy(breed)
        else
            current_user.breeds.push(breed)
        end
        respond_to do |format|
            format.html
        end
    end
end
