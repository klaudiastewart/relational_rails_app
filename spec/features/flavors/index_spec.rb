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

  it "can click on the edit link for a flavor and you can edit and it saves" do
    little_man = Shop.create!(name: "Little Man's", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 3)
    chocolate = little_man.flavors.create(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/flavors"
    expect(current_path).to eq("/flavors")

    click_link "Edit"

    expect(current_path).to eq("/flavors/#{chocolate.id}/edit")
    expect(page).to have_content("Edit #{chocolate.name}")

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
