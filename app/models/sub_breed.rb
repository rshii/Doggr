class SubBreed < ApplicationRecord
  belongs_to :breed, :counter_cache => true
end
