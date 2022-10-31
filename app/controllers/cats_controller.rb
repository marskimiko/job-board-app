class CatsController < ApplicationController

  get "/cats" do
   cats = Cat.all
   cats.to_json
  end

  get '/cats/:id' do
    cat = Cat.find_by_id(params[:id])
    cat.to_json
  end

  post "/cats/new" do
    cat = Cat.create(
      job_type: params[:job_type]
    )
    cat.to_json  
  end

  delete '/cats/:id' do
    category = Cat.find(params[:id])
    category.destroy
  end
  
end
