require 'rails_helper'

RSpec.describe "shops attributes", type: :feature do
  it "can show shops attributes" do
    little_man = Shop.create(name: "Little Man's", has_ice_cream_alternatives: true, google_review_rating: 5, created_at: Time.now, updated_at: Time.now)

    visit "/shops/#{little_man.id}"

    expect(page).to have_content("#{little_man.name}")
    expect(page).to have_content("#{little_man.has_ice_cream_alternatives}")
    expect(page).to have_content("#{little_man.google_review_rating}")
    expect(page).to have_content("#{little_man.created_at}")
    expect(page).to have_content("#{little_man.updated_at}")
  end

  it "can display the number of flavors at the shop" do
    little_man = Shop.create(name: "Little Man's", has_ice_cream_alternatives: true, google_review_rating: 5, created_at: Time.now, updated_at: Time.now)
    chocolate = little_man.flavors.create({
      id: 1,
      name: "Chocolate",
      nut_free: true,
      calories_per_scoop: 250
      })
    # chocolate.save
    visit "/shops/#{little_man.id}"
    expect(page).to have_content("#{little_man.flavors.count}")
  end

  it "can click on a button link for flavors and shops index" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    visit "/shops/#{little_man.id}"

    click_link "Flavors"
    click_link "Shops"
  end

  it "can show a link that send a user to flavors at that shop url" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    visit "/shops/#{little_man.id}"

    click_link "Flavors at this shop"
  end
end
