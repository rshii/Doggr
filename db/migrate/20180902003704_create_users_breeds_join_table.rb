class CreateUsersBreedsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :breeds do |t|
    t.index :user_id
    t.index :breed_id
    end
  end
end
