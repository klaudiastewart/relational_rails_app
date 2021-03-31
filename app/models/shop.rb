class Shop < ApplicationRecord
  has_many :flavors, dependent: :destroy

  #mayve model test this
  def order_by
    order(created_at: :desc)
  end
  validates_presence_of :name, :has_ice_cream_alternatives, :google_review_rating #:created_at, :updated_at
end
