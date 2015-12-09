class ItemsMoneysController < ApplicationController

  def index
    @items_moneys = ItemMoney.all
  end
  
end
