require 'rails_helper'

RSpec.describe 'Item Index', type: :feature do
  before do
    @item_1 = Item.create!(name: 'test', description: 'this is a test', price: 4.55, quantity: 7)
    @item_2 = Item.create!(name: 'test the second', description: 'this is also a test', price: 2.55, quantity: 5)
    visit items_path
  end

  it 'shows all items' do
    expect(page).to have_content(@item_1.name)
    expect(page).to have_content(@item_2.name)
  end

  it 'can link to an item' do
    click_link 'test'

    expect(current_path).to eq(item_path(@item_1.id))
  end

  it 'can create a new item' do
    click_on 'Add Item'

    expect(current_path).to eq(new_item_path)
  end
end