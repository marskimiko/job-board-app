require './config/environment'
# require "sinatra/json"

class ApplicationController < Sinatra::Base
  # set :default_content_type, 'application/json'

  configure do
    set :default_content_type, 'application/json'
  end

  get "/" do
    "Hello World"
  end

  private

  def current_user
    User.first
  end

end
