class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
    Item.create(name: params['name'], description: params['description'], price: params['price'], quantity: params['quantity'])
    redirect_to items_path
  end
end