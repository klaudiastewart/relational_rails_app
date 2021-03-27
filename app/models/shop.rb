class Shop < ApplicationRecord
  has_many :flavors

  # Shop.order(created_at: :desc)
end
