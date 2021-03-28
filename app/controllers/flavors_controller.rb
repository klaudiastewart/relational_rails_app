class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def new
    # binding.pry
    # @shops = Shop.find(params[:id])
    @flavor = Flavor.new
  end

  def show
    @flavor = Flavor.find(params[:flavor_id])
  end

  def create
    binding.pry
    @shops = Shop.find(params[:id])

    @shops.flavors.create({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      # shops_id: params[:flavor][:shops_id]
      })

    # flavor.save

    # redirect_to "/flavors"

    redirect_to "/shops/#{params[:id]}/flavors"
  end
end
