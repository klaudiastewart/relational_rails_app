class ChangeForeignKeyNameForFlavors < ActiveRecord::Migration[5.2]
  def change
    rename_column :flavors, :shops_id, :shop_id
  end
end
