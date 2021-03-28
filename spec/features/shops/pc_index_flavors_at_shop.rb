require 'rails_helper'

RSpec.describe "shop has flavors or not", type: :feature do
  it "can click on a button link for flavors and shops index" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    visit "/shops/#{little_man.id}/flavors"

    click_link "Flavors"
    click_link "Shops"
  end

  it "displays a message if there are no flavors associated with the shop" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    visit "/shops/#{little_man.id}/flavors"

    expect(page).to have_content("There are no flavors available at this time")
  end

  it "displays flavors and their attributes if shop has flavors" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    flavor = little_man.flavors.create({
      name: "Chocolate",
      nut_free: true,
      calories_per_scoop: 250
      })
    flavor.save
    # chocolate = Flavor.create(name: "Chocolate", nut_free: true, calories_per_scoop: 250.0, shop_id: little_man.id)
    visit "/shops/#{little_man.id}/flavors"
    binding.pry
    expect(page).to have_content("Chocolate")
    expect(page).to have_content("Is the flavor nut free? true")
    expect(page).to have_content("Amount of calories per scoop: 250")
  end
end
