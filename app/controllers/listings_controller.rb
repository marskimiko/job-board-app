class ListingsController < ApplicationController

  # GET: /listings
  get "/listings" do
    erb :"/listings/index.html"
  end

  # GET: /listings/new
  get "/listings/new" do
    erb :"/listings/new.html"
  end

  # POST: /listings
  post "/listings" do
    redirect "/listings"
  end

  # GET: /listings/5
  get "/listings/:id" do
    erb :"/listings/show.html"
  end

  # GET: /listings/5/edit
  get "/listings/:id/edit" do
    erb :"/listings/edit.html"
  end

  # PATCH: /listings/5
  patch "/listings/:id" do
    redirect "/listings/:id"
  end

  # DELETE: /listings/5/delete
  delete "/listings/:id/delete" do
    redirect "/listings"
  end
end
