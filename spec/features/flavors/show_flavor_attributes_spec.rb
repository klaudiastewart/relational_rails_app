require 'rails_helper'

RSpec.describe "flavors attribute show page", type: :feature do
  it "can click on a button link for flavors and shops index" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/flavors/#{chocolate.id}"
    expect(current_path).to eq("/flavors/#{chocolate.id}")

    click_link "Flavors"
    click_link "Shops"
  end

  it "shows the attributes of a flavor" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/flavors/#{chocolate.id}"
    expect(current_path).to eq("/flavors/#{chocolate.id}")

    expect(page).to have_content("#{chocolate.name}")
    expect(page).to have_content("#{chocolate.nut_free}")
    expect(page).to have_content("#{chocolate.calories_per_scoop}")
    expect(page).to have_content("#{chocolate.created_at}")
    expect(page).to have_content("#{chocolate.updated_at}")
  end

  it "can click the delete button and return to the flavors index" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/flavors/#{chocolate.id}"
    expect(current_path).to eq("/flavors/#{chocolate.id}")

    click_button "Delete Flavor"

    expect(current_path).to eq("/flavors")
    expect(page).to have_no_content("#{chocolate.name}")
  end

  it "can update a flavor and refresh the flavor show page with those changes" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/flavors/#{chocolate.id}"
    expect(current_path).to eq("/flavors/#{chocolate.id}")

    click_link "Update #{chocolate.name}"
    expect(current_path).to eq("/flavors/#{chocolate.id}/edit")

    fill_in("flavor[name]", with: "Vanilla")
    fill_in("flavor[nut_free]", with: false)
    fill_in("flavor[calories_per_scoop]", with: 500)

    click_button "Update Flavor"

    expect(current_path).to eq("/flavors/#{chocolate.id}")
    expect(page).to have_content("#{chocolate.name}")
    expect(page).to have_content("#{chocolate.nut_free}")
    expect(page).to have_content("#{chocolate.calories_per_scoop}")
  end
end
