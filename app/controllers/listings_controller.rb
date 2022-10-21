class ListingsController < ApplicationController

  get "/listings" do
    Listing.all.to_json(:include => { :cat => { :only => :job_type }} )
    # @notes.to_json(:include => { :user => { :only => :username } })
  end

  post "/listings/new" do
    listing = Listing.create(
      title: params[:title],
      body: params[:body],
      completed: params[:completed],
      date: params[:date],
      user: current_user,
      cat_id: params[:cat_id]
    )
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
