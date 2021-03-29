class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def new
    # @shops = Shop.find(params[:id])
    # @flavor = Flavor.new({
    #   name
    #   })
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
      })

    # flavor.save

    redirect_to "/shops/#{@shops.id}/flavors"
  end

  def edit
    @flavor = Flavor.find(params[:flavor_id])
  end

  def update
    # binding.pry
    flavor = Flavor.find(params[:flavor_id])
    flavor.update({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      })
    flavor.save
    # binding.pry
    redirect_to "/flavors/#{flavor.id}"
  end

  def destroy
    Flavor.destroy(params[:flavor_id])
    redirect_to '/flavors'
  end 
end
