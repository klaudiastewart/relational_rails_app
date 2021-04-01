class Flavor < ApplicationRecord
  belongs_to :shop

  validates_presence_of :name,
                        :nut_free,
                        :calories_per_scoop,
                        :shop_id 
end
