class ListingsController < ApplicationController

  get "/listings" do
    Listing.all.to_json(:include => { :cat => { :only => :job_type }} )
    # @notes.to_json(:include => { :user => { :only => :username } })
  end

  post "/listings/new" do
    cat = Cat.find_by(id: params[:cat_id])
    listing = cat.listings.build(
      title: params[:title],
      body: params[:body]
    )
    listing.save
    listing.to_json(:include => { :cat => { :only => :job_type }} )
  end

  patch '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.update(
      title: params[:title],
      body: params[:body],
    )
    listing.to_json(:include => { :cat => { :only => :job_type }} )
  end 

  delete '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.destroy
  end

end
