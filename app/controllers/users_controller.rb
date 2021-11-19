class UsersController < ApplicationController
  def create
    user = User.new(username: params[:username],email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      render json: {message: "User Created"}, tatus: :created
    else 
      render json: {error: user.errors.all_messages}, status: :bad_request
    end
  end
end
