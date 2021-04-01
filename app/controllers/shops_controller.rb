class ShopsController < ApplicationController
  def index
    @shops = Shop.order_by.all
  end

  def pc_index
    # binding.pry
    # @thershold = Flavor.where(:calories_per_scoop >= "#{number}")
    @shop = Shop.find(params[:id])
    if params[:sort]
      @flavors = @shop.flavors.order(:name)
    else
      @flavors = @shop.flavors.all
    end
  end

  def show
    @shop = Shop.find(params[:id])
    @count = @shop.flavors.count
  end

  def new
    @shop = Shop.new
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def create
    shop = Shop.create({
      name: params[:shop][:name].downcase,
      has_ice_cream_alternatives: params[:shop][:has_ice_cream_alternatives],
      google_review_rating: params[:shop][:google_review_rating]
      })
    if shop.save
      redirect_to '/shops'
    else
      binding.pry
    end
  end

  def update
    shop = Shop.find(params[:id])
    shop.update({
      name: params[:shop][:name].downcase,
      has_ice_cream_alternatives: params[:shop][:has_ice_cream_alternatives],
      google_review_rating: params[:shop][:google_review_rating]
      })
    shop.save
    redirect_to "/shops/#{shop.id}"
  end

  def destroy
    Shop.destroy(params[:id])
    redirect_to '/shops'
  end
end
