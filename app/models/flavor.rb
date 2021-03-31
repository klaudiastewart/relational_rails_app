class Flavor < ApplicationRecord
  belongs_to :shop

  def answer
    if params[:flavor][:nut_free] == 'y'
      is_nut_free = true
    else
      is_nut_free = false
    end
  end
  validates_presence_of :name, :nut_free, :calories_per_scoop, :shop_id #, :created_at, :updated_at
end
