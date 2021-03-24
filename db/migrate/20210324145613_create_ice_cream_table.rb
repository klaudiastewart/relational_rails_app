class CreateIceCreamTable < ActiveRecord::Migration[5.2]
  def change
    create_table :ice_cream_tables do |t|
      t.string :name
      t.boolean :nut_free
      t.float :calories_per_float
    end
  end
end
