class AddFlavorsToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :flavors, :shops, foreign_key: true
  end
end
