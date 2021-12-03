class PlanetsController < ApplicationController
  before_action :authenticate_user

  def index
    systems = System.find_by(id: params[:id])
    planets = systems.planets.all 
    render json: planets.as_json
  end

  def show
    planet = Planet.find_by(id: params[:id])
    render json: planet.as_json
  end

  def create
    planet = Planet.new(system_id: params[:system_id], name: params[:name], diameter: params[:diameter], mass: params[:mass], orbital_distance: params[:orbital_distance], description: params[:description], image: params[:image], is_star: params[:is_star])
    if planet.save
      render json: planet.as_json
    else 
      render json: {error: planet.errors.full_messages}
    end
  end

  def update
    planet = Planet.find_by(id: params[:id])
    planet.system_id = planet.system_id
    planet.name = params[:name] || planet.name
    planet.diameter = params[:diameter] || planet.diameter
    planet.mass = params[:mass] || planet.mass
    planet.orbital_distance = params[:orbital_distance] || planet.orbital_distance
    planet.description = params[:description] || planet.description
    planet.image = params[:image] || planet.image
    planet.is_star = params[:is_star] || planet.is_star
    if planet.save
      render json: planet.as_json
    else  
      render json: {error: planet.errors.full_messages}
    end
  end

  def destroy
    planet = Planet.find_by(id: params[:id])
    if planet.delete
      render json: {message: "Planet Deleted"}
    else  
      render json: {error: planet.errors.full_messages}
    end
  end
end
