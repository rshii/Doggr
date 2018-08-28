class Breed < ApplicationRecord
    has_many :favorited_dog_lists
    has_many :users, through: :favorited_dog_lists
    has_many :tags
    has_many :sub_breeds
    named_scope :no_sub_breed, :conditions => { :sub_breeds_count => 0 }
end
