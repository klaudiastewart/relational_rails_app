class CreateParent < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name
      t.boolean :has_ice_cream_alternatives
      t.float :google_review_rating
    end
  end
end
