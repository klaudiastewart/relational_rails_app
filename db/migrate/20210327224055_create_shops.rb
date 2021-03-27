class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.boolean :has_ice_cream_alternatives
      t.float :google_review_rating

      t.timestamps
    end
    add_reference :flavors, :shops, foreign_key: true
  end
end
