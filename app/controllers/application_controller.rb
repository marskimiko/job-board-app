require './config/environment'
# require "sinatra/json"

class ApplicationController < Sinatra::Base

  configure do
    set :default_content_type, 'application/json'
  end

  get "/" do
  end



end
