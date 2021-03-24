class ParentsController < ApplicationController
  def index
    # binding.pry
    @parents = Parent.all
  end

  def show
    # binding.pry
    @parent = Parent.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
    parent = Parent.new({
      name: params[:parent][:name],
      has_ice_cream_alternatives: params[:parent][:has_ice_cream_alternatives],
      google_review_rating: params[:parent][:google_review_rating]
      })
      # binding.pry
    parent.save
    # binding.pry

    ice_cream_types = IceCreamTypes.new({
      name: params[:child][:name],
      nut_free: params[:child][:nut_free],
      calories_per_scoop: params[:child][:calories_per_scoop]
      })

    ice_cream_types.save
    binding.pry
    redirect_to '/parents'
  end
end
