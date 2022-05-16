require 'rails_helper'

RSpec.describe 'Item show', type: :feature do
  before do
    @item_1 = Item.create!(name: 'test', description: 'this is a test', price: 4.55, quantity: 7)
    @item_2 = Item.create!(name: 'test the second', description: 'this is also a test', price: 2.55, quantity: 15)
    visit items_path
  end
  it 'can show item details' do
    click_link @item_1.name

    expect(current_path).to eq(item_path(@item_1.id))
    expect(page).to have_content(@item_1.name)
    expect(page).to have_content(@item_1.description)
    expect(page).to have_content(@item_1.price)
    expect(page).to have_content(@item_1.quantity)

    expect(page).to_not have_content(@item_2.name)
    expect(page).to_not have_content(@item_2.description)
    expect(page).to_not have_content(@item_2.price)
    expect(page).to_not have_content(@item_2.quantity)
  end
end