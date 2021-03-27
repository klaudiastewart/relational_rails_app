class ShopsController < ApplicationController
  def index
    ordered = Shop.order(created_at: :desc)
    @shops = ordered.all
  end

  def pc_index
    @shop = Shop.find(params[:id])
    @flavors = @shop.flavors.all
  end

  def show
    @shop = Shop.find(params[:id])
    @count = @shop.flavors.count
  end

  def show_flavors
    binding.pry
    @final = Flavors.find(:id)
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
    redirect_to '/shops'
    # redirect_to "/shops/#{params[:id]}/flavors"
  end
end
