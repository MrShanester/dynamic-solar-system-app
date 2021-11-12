class PlanetsController < ApplicationController
  def index
    planets = Planet.all 
    render json: planets.as_json
  end
end
