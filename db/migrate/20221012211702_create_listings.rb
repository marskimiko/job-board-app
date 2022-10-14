class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :body
      t.datetime :date
      t.boolean :completed, :default => false
      t.belongs_to :cat 
      t.belongs_to :user 
    end
  end
end
