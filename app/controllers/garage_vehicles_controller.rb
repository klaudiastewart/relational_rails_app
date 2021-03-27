class GarageVehiclesController < ApplicationController
  def index
    @garage = Garage.find(params[:id])
    @vehicles = @garage.vehicles
  end
end