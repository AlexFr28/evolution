class StatementsController < ApplicationController

  def new
    @accounts = Account.all
  end

  def create
    accounts = Account.all
    accounts.each do |account|
      Statement.create(
        account_id: account.id,
        amount: params[account.name],
        date: params[:date]
      )
    end
    redirect_to '/items_moneys'
  end

  def show
    @date = params[:id]
    @statements = Statement.where(date: @date)
  end
  
end
