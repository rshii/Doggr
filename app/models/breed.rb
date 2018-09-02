class Breed < ApplicationRecord
    has_many :tags
    has_many :sub_breeds
    has_and_belongs_to_many :users
end
