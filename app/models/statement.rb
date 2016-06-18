class Statement < ActiveRecord::Base
  belongs_to :account

  def bilan
    result = 0
    statements = Statement.where(date: date)
    statements.each do |statement|
      if statement.account.operator.symbol == '+'
        result += statement.amount
      else
        result -= statement.amount
      end
    end
    result
  end

end
