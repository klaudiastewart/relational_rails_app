class shopsController < ApplicationController
  def index
    # binding.pry
    @ice_cream_types = shops.all
  end

  def show
    @ice_cream_type = shops.find(params[:id])
  end

  # def create
  #   binding.pry
  #   ice_cream_types = shops.new
  # end
end
