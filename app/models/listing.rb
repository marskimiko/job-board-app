class Listing < ActiveRecord::Base
  belongs_to :cat
end

# class Listing < ActiveRecord::Base
#   # belongs_to :user
#   belongs_to :cat

#   # def self.pending
#   #   self.where(completed: false)
#   # end

# end
