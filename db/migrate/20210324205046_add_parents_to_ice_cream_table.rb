class AddParentsToIceCreamTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :ice_cream_types, :parent, foreign_key: true
  end
end
