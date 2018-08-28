class User < ApplicationRecord
  include Clearance::User
  has_one :favorited_dog_list
  has_many :breeds, through: :favorited_dog_list
end
