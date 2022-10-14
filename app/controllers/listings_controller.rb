class ListingsController < ApplicationController


  get "/listings" do
    Listing.all.to_json
  end

  get "/listings/:id" do
    Listing.find(params[:id]).to_json
  end

  post "/listings" do
    listing = Listing.create(
      title: params[:title],
      body: params[:body]
    )
    listing.to_json
  end

  patch '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.update(
      title: params[:title],
      body: params[:body]
    )
    listing.to_json
  end 

  delete '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.destroy
  end


  # not currently working but might be better for listings to comments 
  # get "/listings/:id/users" do 
  #   Listing.find(params[:id]).users.to_json
  # end

  # get "/listings/:id/edit" do
  # end

  # patch "/listings/:id/edit" do
  #   # edit a listing
  # end

end
