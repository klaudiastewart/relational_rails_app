class VehiclesController < ApplicationController
  def index
    # @vehicles = Garage.find(params[:id]).vehicles
    @vehicles = Vehicle.all
  end

  def show
    @vehicles = Vehicle.find(params[:id])
  end
end