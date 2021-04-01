require 'rails_helper'

RSpec.describe "shops index page", type: :feature do
  it "can see all shops and created at times" do
    little_man = Shop.create!(name: "Little Man", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 4.2)

    visit "/shops"

    expect(page).to have_content("#{little_man.name}")
    expect(page).to have_content("#{little_man.created_at}")
  end

  it "can click on a link to the shops show page" do
    visit "/shops"

    click_link "Flavors"
    click_link "Shops"
  end

  it "can click on a link to the shop" do
    sweet_cow = Shop.create!(name: "Sweet Cow", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 4.2)

    visit "/shops"

    click_link "#{sweet_cow.name}"
    expect(current_path).to eq("/shops/#{sweet_cow.id}")

    expect(page).to have_content("#{sweet_cow.name}")
    expect(page).to have_content("#{sweet_cow.created_at}")
    expect(page).to have_content("#{sweet_cow.updated_at}")
    expect(page).to have_content("#{sweet_cow.has_ice_cream_alternatives}")
    expect(page).to have_content("Number of flavors at this shop:")
  end

  it "can click flavors a this shop link and show the output" do
    sweet_cow = Shop.create!(name: "Sweet Cow", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 4.2)
    chocolate = sweet_cow.flavors.create!(name: "Chocolate", nut_free: true, calories_per_scoop: 200)

    visit "/shops/#{sweet_cow.id}"
    expect(current_path).to eq("/shops/#{sweet_cow.id}")

    click_link "Flavors at this shop"
    expect(current_path).to eq("/shops/#{sweet_cow.id}/flavors")

    expect(page).to have_content("#{chocolate.name}")
    expect(page).to have_content("#{chocolate.nut_free}")
    expect(page).to have_content("#{chocolate.calories_per_scoop}")
  end

  it "can click on a link to edit a shop" do
    sweet_cow = Shop.create!(name: "Sweet Cow", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 4.2)

    visit "/shops"
    expect(current_path).to eq("/shops")

    click_link "Edit"

    expect(current_path).to eq("/shops/#{sweet_cow.id}/edit")
  end

  it "can click on a link to delete a shop" do 
    sweet_cow = Shop.create!(name: "Sweet Cow", created_at: Time.now, has_ice_cream_alternatives: true, google_review_rating: 4.2)

    visit "/shops"
    expect(current_path).to eq("/shops")

    click_link "Delete Shop"
    expect(current_path).to eq("/shops")
    expect(page).to have_no_content("#{sweet_cow.name}")
  end
end
