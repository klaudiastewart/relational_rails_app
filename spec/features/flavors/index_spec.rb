require 'rails_helper'

RSpec.describe "flavors index page", type: :feature do
  it "can see all flavors created" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)
    vanilla = little_man.flavors.create(name: "Vanilla", nut_free: true, calories_per_scoop: 100)

    visit "/flavors"

    expect(current_path).to eq("/flavors")
    expect(page).to have_content("#{chocolate.name}")
    expect(page).to have_content("#{vanilla.name}")
  end

  it "can click on a button link for flavors and shops index" do
    #can maybe have expected current path = for this test block
    visit "/flavors"
    expect(current_path).to eq("/flavors")

    click_link "Flavors"
    click_link "Shops"
  end

  it "can click on a link to the flavor" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/flavors"
    expect(current_path).to eq("/flavors")

    click_link "#{chocolate.name}"
  end
end
