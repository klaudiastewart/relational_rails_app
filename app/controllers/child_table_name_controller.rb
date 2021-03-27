class ChildTableNameController < ApplicationController
  def index
    # binding.pry
    @ice_cream_types = IceCreamTypes.all
  end

  def show
    @ice_cream_type = IceCreamTypes.find(params[:id])
  end

  # def create
  #   binding.pry
  #   ice_cream_types = IceCreamTypes.new
  # end
end
