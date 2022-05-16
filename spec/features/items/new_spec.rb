require 'rails_helper'

RSpec.describe 'Item Index', type: :feature do
  before do
    visit new_item_path
  end

  it 'can create a new item' do
    fill_in 'Name', with: 'this is a test'
    fill_in 'description', with: 'this description is a test'
    fill_in 'price', with: 5.55
    fill_in 'quantity', with: 100

    click_on 'Create Item'

    expect(current_path).to eq(items_path)
    expect(page).to have_content('this is a test')
  end
end