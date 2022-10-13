class ListingsController < ApplicationController


  get "/listings" do
    Listing.all.to_json
  end


  # get "/listings/new" do
  # end

  post "/listings" do
    if params[:tile] != ""
      Listing.create(params)
    end
  end

  get "/listings/:id" do
    Listing.find(params[:id]).to_json
  end

  # get "/listings/:id/edit" do
  # end

  patch "/listings/:id" do
    # edit a listing
  end

  delete "/listings/:id" do
  end
end
