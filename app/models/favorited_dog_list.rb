class FavoritedDogList < ApplicationRecord
  belongs_to :user
  belongs_to :breed
end
