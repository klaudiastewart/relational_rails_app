class RenameParentsToShops < ActiveRecord::Migration[5.2]
  def change
    rename_table('parents', 'shops')
  end
end
