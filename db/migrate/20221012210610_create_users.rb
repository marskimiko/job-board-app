class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.string :email
      t.integer :user_id
      t.timestamps
    end
  end
end
