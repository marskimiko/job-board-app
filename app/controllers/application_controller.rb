require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :default_content_type, 'application/json'
  end

  get "/" do
    "Bye World"
  end

 
  # private

  # def current_user
  #   User.first
  # end

end
