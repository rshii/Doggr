class CreateSubBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_breeds do |t|
      t.string :sub_breed_name
      t.references :breed, foreign_key: true

      t.timestamps
    end
  end
end
