class CreateFavoritedDogLists < ActiveRecord::Migration[5.2]
  def change
    create_table :favorited_dog_lists do |t|
      t.references :user, foreign_key: true
      t.references :breed, foreign_key: true

      t.timestamps
    end
  end
end
