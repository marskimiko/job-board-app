class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :cat
end
