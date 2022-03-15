require 'rails_helper'

RSpec.feature "Visitor navigates to home page and add to cart an item", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

   5.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "see selected product" do
    # ACT
    visit root_path
    click_button('Add' ,match: :first)

    # VERIFY
    expect(page).to have_text 'My Cart (1)', count:1

     # DEBUG
     save_screenshot
      puts page.html
  end
end