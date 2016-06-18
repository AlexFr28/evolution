class ItemsMoneysController < ApplicationController

  def index
    @items_moneys = ItemMoney.all

    @accounts = Account.all
    statements = Statement.select("DISTINCT date")
    @bilans = {}
    statements.each do |statement|
      @bilans[statement.date] = statement.bilan
    end
  end

end
