class Shop < ApplicationRecord
  has_many :flavors, dependent: :destroy

  def self.order_by
    order(created_at: :desc)
  end

  validates_presence_of :name,
                        :has_ice_cream_alternatives,
                        :google_review_rating 
end
