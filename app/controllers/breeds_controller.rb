class BreedsController < ApplicationController
    def index
        @breeds = Breed.paginate(:page => params[:page], :per_page => 9)
    end
    def seed
        if Breed.first.nil?
            response = HTTParty.get('https://dog.ceo/api/breeds/list/all')
            breeds = JSON.parse(response.body)["message"]
            breeds.each do |breed|
                Breed.create(breed_name: breed[0].capitalize, breed_url: breed[0])
                if !breed[1].empty?
                    breed[1].each do |sub_breed|
                        Breed.create(
                            breed_name: sub_breed.capitalize + " " + breed[0].capitalize,
                            breed_url: breed[0] + "-" + sub_breed
                        )
                    end
                end
            end
        end
        redirect_to breeds_url
    end
    def show
        @breed = Breed.find(params[:id])
    end
end
