class SortShopsByCreatedAtTime < ActiveRecord::Migration[5.2]
  def change
    Shop.order(created_at: :desc)
  end
end
