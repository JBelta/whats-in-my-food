require 'rails_helper'

describe 'As a User' do
  describe 'When I visit /' do
    it 'Has a form that can be filled in and a button to redirect to the /food path' do
      visit root_path

      fill_in :q, with: 'Sweet Potato'

      click_on 'Submit'
      expect(current_path).to eq(food_path)
    end
  end
  describe 'When redirected to /foods' do
    before :each do
      visit root_path
      fill_in :q, with: 'Sweet Potato'
      click_on 'Submit'
    end
    it 'has a list of results from the search with a total number of items' do

      expect(page).to have_css('counter')
    end

    it 'Has the GTIN/UPC for each food item' do
      expect(page).to have_css('GTIN-code')
    end

    it 'Has the description for each food item' do
      expect(page).to have_css('description')
    end

    it 'Has the Brand Owner for each food item' do
      expect(page).to have_css('brand')
    end

    it 'Has the GTIN/UPC for each food item' do
      expect(page).to have_css('ingreedients')
    end
  end
end
