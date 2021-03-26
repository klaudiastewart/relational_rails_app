class Flavor < ApplicationRecord
  belongs_to :shops, class_name: "Shop", foreign_key: :shop_id
end
