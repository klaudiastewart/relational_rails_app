class FlavorsController < ApplicationController
  def index
  end

  def new
    # binding.pry
    @shops = Shop.find(params[:shops_id])
    @flavor = Flavor.new
  end

  def show
    binding.pry
    @ice_cream_type = Flavors.find(params[:flavor_id])
  end

  def create
    binding.pry
    @shops = Shop.find(params[:shops_id])

    @shops.flavors.create({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      # shops_id: params[:flavor][:shops_id]
      })

    # flavor.save

    # redirect_to "/flavors"

    redirect_to "/shops/#{params[:shops_id]}/flavors"
  end
end
