require './config/environment'

class UserController < Sinatra::Base
  # set :default_content_type, 'application/json'

  configure do
    set :default_content_type, 'application/json'
  end

  # get "/" do
  #   "Bye World"
  # end

end