require 'rails_helper'

RSpec.describe "flavors index page", type: :feature do
  it "can click on a button link for flavors and shops index" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)

    visit "/shops/#{little_man.id}/flavors/new"

    click_link "Flavors"
    click_link "Shops"
  end

  it "can fill out a form and be redirected to shops index flavors page with new flavor added" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)

    visit "/shops/#{little_man.id}/flavors"

    click_link "Create New Flavor"
    expect(current_path).to eq("/shops/#{little_man.id}/flavors/new")

    fill_in("name_input", with: "Chocolate")
    fill_in("nut_free", with: "y")
    fill_in("calories", with: 200)

    click_button "Create Flavor"

    expect(current_path).to eq("/shops/#{little_man.id}/flavors")
    expect(page).to have_content("Chocolate")
  end
end
