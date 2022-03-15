require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

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
    page.find('h4', match: :first).click

    # VERIFY
    expect(page).to have_css 'section.products-show', count:1

     # DEBUG
     save_screenshot
     puts page.html
  end
end
