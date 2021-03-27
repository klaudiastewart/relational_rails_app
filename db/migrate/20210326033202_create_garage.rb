class CreateGarage < ActiveRecord::Migration[5.2]
  def change
    create_table :garages do |t|
      t.string :name
      t.boolean :is_full, default: false
      t.integer :num_of_mechanics

      t.timestamps
    end
  end
end
