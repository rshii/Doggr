class CreateBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :breeds do |t|
      t.string :breed_name
      t.string :breed_url

      t.timestamps
    end
  end
end
