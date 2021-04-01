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
    x = params[:flavor][:nut_free]
    if x == 'y'
      x = true
    else x == 'n'
      x = false
    end
    flavor = @shop.flavors.create!({
      name: params[:flavor][:name],
      nut_free: true,
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      })
    binding.pry
    if flavor.save
      redirect_to "/shops/#{@shop.id}/flavors"
    else
      binding.pry
    end
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
