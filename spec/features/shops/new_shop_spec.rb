require 'rails_helper'

RSpec.describe "create a new shop", type: :feature do
  it "can click on a button link for flavors and shops index" do
    visit "/shops/new"

    click_link "Flavors"
    click_link "Shops"
  end

  it "can click the submit button" do
    visit "/shops/new"

    click_button "Submit"
  end

  it "to have text boxes exist and can be filled in for shop questions" do
    visit "/shops/new"

    fill_in("name_input", with: "Little Man's")
    fill_in("review_input", with: 5)
    fill_in("alternative", with: "y")
  end

  it "Has a description of what the page wants" do

    visit "/shops/new"
    expect(page).to have_content("Please tell us about your ice cream shop and the types you have:")
  end 
end
