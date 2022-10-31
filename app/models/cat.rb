class Cat < ActiveRecord::Base
  has_many :listings
end

# class Cat < ActiveRecord::Base
#   has_many :listings
#   # has_many :users, through: :listings
# end
