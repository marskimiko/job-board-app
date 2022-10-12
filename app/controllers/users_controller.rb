class UsersController < ApplicationController


  get "/users" do
    User.all.to_json
  end

  # get "/users/new" do
  # end

  post "/users" do
  end

  get "/users/:id" do
  end


  get "/users/:id/edit" do
  end

  patch "/users/:id" do
  end

  delete "/users/:id/delete" do
  end
end
