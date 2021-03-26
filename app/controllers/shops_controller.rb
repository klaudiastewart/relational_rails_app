class ShopsController < ApplicationController
  def index
    # binding.pry
    @shops = Shop.all
  end

  def show
    # binding.pry
    @shop = Shop.find(params[:id])
  end

  def show_flavor
    binding.pry
    @show_ice_cream = Flavors.all
    # @show_ice_cream = Flavors.find(params[:ice_cream_shop_id])
  end

  def new
  end

  def create
    binding.pry
    shop = Shop.new({
      name: params[:shop][:name],
      has_ice_cream_alternatives: params[:shop][:has_ice_cream_alternatives],
      google_review_rating: params[:shop][:google_review_rating]
      })
    shop.save

    flavor = Flavors.new({
      name: params[:flavor][:name],
      nut_free: params[:flavor][:nut_free],
      calories_per_scoop: params[:flavor][:calories_per_scoop]
      })

    flavor.save
    redirect_to '/shops'
  end
end
