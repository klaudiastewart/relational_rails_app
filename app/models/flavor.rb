class Flavor < ApplicationRecord
  belongs_to :shop

  validates_presence_of :name, :nut_free, :calories_per_scoop, :shop_id #, :created_at, :updated_at
end
