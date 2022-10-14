class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :type
      t.integer :cat_id
      t.timestamps
    end
  end
end
