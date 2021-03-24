class ChildTableNameController < ApplicationController
  def index
    binding.pry
    @ice_creams = IceCream.all
  end

  def create
    binding.pry
    ice_cream = IceCream.new
  end 
end
