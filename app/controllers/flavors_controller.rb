class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def new
    @shop = Shop.find(params[:id])
    @flavor = Flavor.new
  end

  def show
    @flavor = Flavor.find(params[:flavor_id])
  end

  def create
    @shop = Shop.find(params[:id])
    flavor = @shop.flavors.create({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      })
      redirect_to "/shops/#{@shop.id}/flavors"
  end

  def edit
    @flavor = Flavor.find(params[:flavor_id])
  end

  def update
    flavor = Flavor.find(params[:flavor_id])
    flavor.update({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      })
    flavor.save
    redirect_to "/flavors/#{flavor.id}"
  end

  def destroy
    Flavor.destroy(params[:flavor_id])
    redirect_to '/flavors'
  end
end
