class FlavorsController < ApplicationController
  def index
    binding.pry
    @ice_cream_types = Flavors.all
  end

  def show
    @ice_cream_type = Flavors.find(params[:id])
  end

  # def create
  #   binding.pry
  #   ice_cream_types = shops.new
  # end
end
