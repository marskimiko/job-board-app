class UsersController < ApplicationController


  get "/users" do
    User.all.to_json
  end

  # get "/users/new" do
  # end

  post "/users" do
    # make a new user
    if params[:name] != ""
      User.create(params)
    end
  end

  get "/users/:id" do
    User.find(params[:id]).to_json
  end


  # get "/users/:id/edit" do
  # end

  patch "/users/:id" do
  end

  delete "/users/:id" do
  end
end
