require 'rails_helper'

RSpec.describe "flavors attribute show page", type: :feature do
  it "can click on a button link for flavors and shops index" do
    chocolate = Flavor.create(name: "Chocolate")

    visit "/flavors/#{chocolate.id}"

    click_link "Flavors"
    click_link "Shops"
  end

  it "shows the attributes of a flavor" do
    chocolate = Flavor.create(id: 1, name: "Chocolate", nut_free: true, calories_per_scoop: 250, created_at: Time.now, updated_at: Time.now)

    visit "/flavors/#{chocolate.id}"
    # binding.pry
    # expect(page).to have_content("#{chocolate.name}")
    expect(page).to have_content("#{chocolate.nut_free}")
    expect(page).to have_content("#{chocolate.calories_per_scoop}")
    expect(page).to have_content("#{chocolate.created_at}")
    expect(page).to have_content("#{chocolate.updated_at}")
  end
end
