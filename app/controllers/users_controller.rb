class UsersController < ApplicationController
  def create
    user = User.new(username: params[:username],email: params[:email], password: params[:password], confirm_password: params[:confirm_password])
    if user.save
      render json: {message: "User Created"}
    else 
      render json: {error: user.error.all_messages}
    end
    
  end
end
