class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new; end

  def create
    garage = Garage.new(garage_params)
    if garage.save
      redirect_to '/garages'
    end
  end

  # 'private' means it cannot be accessed.
  # It makes sure people cant see which params
  # you are permitting
  # the only parameter that is allowed is the
  # ones we are permitting. If anybody tries
  # to inject an additional parameter, it will
  # not allow it.
  private

  def garage_params
    params.permit(:name, :num_of_mechanics)
  end
end