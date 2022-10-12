class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :body
      t.integer :listing_id
      t.timestamps
    end
  end
end
