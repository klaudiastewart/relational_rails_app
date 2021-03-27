class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.boolean :is_operational, default: true
      t.string :type_of_car
      t.integer :horsepower
      t.references :garage, foreign_key: true

      t.timestamps
    end
  end
end
