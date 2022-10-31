require './config/environment'

class UserController < Sinatra::Base

  configure do
    set :default_content_type, 'application/json'
  end

end