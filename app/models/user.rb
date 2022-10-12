class User < ActiveRecord::Base
  has_many :listings
end
