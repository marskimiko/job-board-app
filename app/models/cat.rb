class Cat < ActiveRecord::Base
  has_many :listings
  has_many :users, through: :listings
  
end
