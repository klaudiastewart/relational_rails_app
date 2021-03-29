class Shop < ApplicationRecord
  has_many :flavors

  # Shop.order(created_at: :desc)
  validates_presence_of :name, :has_ice_cream_alternatives, :google_review_rating, :created_at, :updated_at
end
