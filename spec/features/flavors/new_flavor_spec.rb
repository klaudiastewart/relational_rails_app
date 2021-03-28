require 'rails_helper'

RSpec.describe "flavors index page", type: :feature do
  it "can click on a button link for flavors and shops index" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)

    visit "/shops/#{little_man.id}/flavors/new"

    click_link "Flavors"
    click_link "Shops"
  end

  # it "can click the submit button" do
  #   little_man = Shop.create(name: "Little Man's", created_at: Time.now)
  #
  #   visit "/shops/#{little_man.id}/flavors/new"
  #
  #   click_button "Submit"
  # end

  it "to have text boxes exist and can be filled in for flavor questions" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)

    visit "/shops/#{little_man.id}/flavors/new"

    fill_in("name_input", with: "Chocolate")
    fill_in("nut_free", with: "y")
    fill_in("calories", with: 200)
  end
end
