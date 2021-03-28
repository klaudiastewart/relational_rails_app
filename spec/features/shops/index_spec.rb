require 'rails_helper'

RSpec.describe "shops index page", type: :feature do
  it "can see all shops and created at times" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now)
    sweet_cow = Shop.create(name: "Sweet Cow", created_at: Time.now)

    visit "/shops"

    expect(page).to have_content(little_man.name)
    expect(page).to have_content(sweet_cow.name)
    expect(page).to have_content(little_man.created_at)
    expect(page).to have_content(sweet_cow.created_at)
  end

  it "can click on a button link for flavors and shops index" do

    visit "/shops"

    click_link "Flavors"
    click_link "Shops"
  end

  it "can click on a link to the shop" do
    little_man = Shop.create(name: "Little Man's", created_at: Time.now) #2021-03-27 19:03:12 UTC)

    visit "/shops"

    click_link "Little Man's"
  end
end
