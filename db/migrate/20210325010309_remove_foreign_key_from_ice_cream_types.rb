class RemoveForeignKeyFromIceCreamTypes < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :ice_cream_types, name: "ice_cream_types_ice_cream_shop_id_fkey"
  end
end
