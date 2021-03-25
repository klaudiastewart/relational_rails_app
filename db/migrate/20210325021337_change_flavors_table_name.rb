class ChangeFlavorsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table('flavors_tables', 'flavors')
  end
end
