class BreedsController < ApplicationController
    def index
        @breeds = Breed.paginate(:page => params[:page], :per_page => 9)
    end
    def seed
        if Breed.first.nil?
            response = HTTParty.get('https://dog.ceo/api/breeds/list/all')
            breeds = JSON.parse(response.body)["message"]
            breeds.each do |breed|
                breed_data = Breed.new(breed_name: breed[0])
                if !breed[1].empty?
                    breed[1].each do |sub_breed|
                        breed_data.sub_breeds.build(sub_breed_name:sub_breed)
                    end
                end
                breed_data.save
            end
        end
        redirect_to breeds_url
    end
    def show
        @breed = Breed.find(params[:id])
    end
    def toggleFavorite
        respond_to do |format|
            format.html
        end
    end
end
