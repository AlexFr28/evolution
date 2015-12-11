class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
    @operators = Operator.all
  end

  def create
    @account = Account.new(account_param)
    if @account.save
      redirect_to accounts_path, method: :get, notice: "\"#{@account.name}\" a été ajouté(e) avec succés"
    else
      render 'new'
    end
  end

  def edit
    @account = Account.find(params[:id])
    @operators = Operator.all
  end

  def update
    @account = Account.find(params[:id])
    oldname = @account.name
    if @account.update(account_param)
      if @account.name == oldname
        redirect_to accounts_path, notice: "#{@account.name} a été modifié avec succés"
      else
        redirect_to accounts_path, notice: "#{oldname} a été modifié en #{@account.name} avec succés"
      end
    else
      render 'edit'
    end
  end

  def destroy
    account = Account.find(params[:id])
    name = account.name
    account.destroy
    redirect_to accounts_path, method: :get, notice: "\"#{name}\" a été supprimé avec succés"
  end

  private

  def account_param
    params.require(:account).permit(:name, :symbol_id)
  end

end
