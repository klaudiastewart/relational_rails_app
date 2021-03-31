require 'rails_helper'

RSpec.describe "flavors index page", type: :feature do
  it "can see all flavors created" do
    chocolate = Flavor.create(name: "Chocolate")

    visit "/flavors"
  end

  it "can click on a button link for flavors and shops index" do
    #can maybe have expected current path = for this test block
    visit "/flavors"

    click_link "Flavors"
    click_link "Shops"
  end

  it "can click on a link to the flavor" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    chocolate = Flavor.create(name: "Chocolate", shop_id: little_man.id)

    visit "/flavors"

    click_link "#{chocolate.name}"
  end
end
