class CreateBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :breeds do |t|
      t.string :breed_name
      t.integer :sub_breeds_count, default: 0, null:false

      t.timestamps
    end
  end
end
