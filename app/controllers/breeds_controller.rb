class BreedsController < ApplicationController
    def index
        
    end
    def create
        redirect_to action: "index"
        response = HTTParty.get('https://dog.ceo/api/breeds/list/all')
        breeds = JSON.parse(response.body)["message"]
        breeds.each do |breed|
            breed_data = Breed.new(breed_name: breed[0])
            #Build sub_breeds
            if !breed[1].empty?
                breed[1].each do |sub_breed|
                    breed_data.sub_breeds.build(sub_breed_name:sub_breed)
                end
            breed_data.save
            end
        end
    end
    def show
    end
end
