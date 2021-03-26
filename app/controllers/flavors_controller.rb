class FlavorsController < ApplicationController
  def index
    # binding.pry
    @ice_cream_types = Flavors.all
  end

  def new
  end

  def show
    binding.pry
    @ice_cream_type = Flavors.find(params[:flavor_id])
  end

  def create
    binding.pry
    flavor = Flavors.new({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      })

    flavor.save

    redirect_to "/flavors"

    # redirect_to "/shops/#{params[:id]}/flavors"
  end
end
