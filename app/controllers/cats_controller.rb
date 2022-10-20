class CatsController < ApplicationController

  # GET: /cats
  get "/cats" do
   cats = Cat.all
   cats.to_json
  end

  get '/cats/:id' do
    cat = Cat.find_by_id(params[:id])
    cat.to_json
  end
  
end
