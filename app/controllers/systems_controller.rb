class SystemsController < ApplicationController
  def index
    systems = System.all 
    render json: systems.as_json
  end

  def show
    systems = System.find_by(id: params[:id])
    render json: systems.as_json
  end

  def create
    systems = System.new(user_id: params[:user_id], name: params[:name], image: params[:image], description: params[:description])
    if systems.save
      render json: systems.as_json
    else 
      render json: {error: systems.errors.full_messages}
    end
  end

  def update
    systems = System.find_by(id: params[:id])
    systems.user_id = params[:user_id] || systems.user_id
    systems.name = params[:name] || systems.name
    systems.image = params[:image] || systems.image
    systems.description = params[:description] || systems.description
    if systems.save
      render json: systems.as_json
    else
      render json: {error: systems.errors.full_messages}, status: 418
    end
    
  end

  def destroy
    systems = System.find_by(id: params[:id])
    if systems.delete
      render json: {message: "System Deleted"}
    else  
      render json: {error: systems.errors.full_messages}
    end
  end
end
