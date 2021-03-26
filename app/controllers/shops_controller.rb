class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:shop_id])
  end

  def show_flavors
    # @show_ice_cream = Flavors.all
    # # @show_ice_cream = Flavors.find(params[:ice_cream_shop_id])
    # flavor = Flavors.new({
    #   name: params[:flavor][:name],
    #   nut_free: params[:flavor][:nut_free],
    #   calories_per_scoop: params[:flavor][:calories_per_scoop]
    #   })
  end

  def new
  end

  def create
    shop = Shop.new({
      name: params[:shop][:name],
      has_ice_cream_alternatives: params[:shop][:has_ice_cream_alternatives],
      google_review_rating: params[:shop][:google_review_rating]
      })
    shop.save

    # flavor = Flavors.new({
    #   name: params[:flavor][:name],
    #   nut_free: params[:flavor][:nut_free],
    #   calories_per_scoop: params[:flavor][:calories_per_scoop]
    #   })
    #
    # flavor.save
    redirect_to '/shops'
    # redirect_to "/shops/#{params[:id]}/flavors"
  end
end
