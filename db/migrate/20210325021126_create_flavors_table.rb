class CreateFlavorsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :flavors do |t|
      t.string :name
      t.boolean :nut_free
      t.float :calories_per_scoop

      t.timestamps
    end
  end
end
