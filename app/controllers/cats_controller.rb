class CatsController < ApplicationController

  # GET: /cats
  get "/cats" do
   Cat.all.to_json
  end

  # get "/cats/new" do
  #   erb :"/cats/new.html"
  # end

  # POST: /cats
  post "/cats" do
    if params[:type] != ""
      Cat.create(params)
    end
  end

  # GET: /cats/5
  get "/cats/:id" do
    erb :"/cats/show.html"
  end

  # GET: /cats/5/edit
  get "/cats/:id/edit" do
    erb :"/cats/edit.html"
  end

  # PATCH: /cats/5
  patch "/cats/:id" do
    redirect "/cats/:id"
  end

  # DELETE: /cats/5/delete
  delete "/cats/:id/delete" do
    redirect "/cats"
  end
end
