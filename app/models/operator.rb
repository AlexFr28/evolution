class Operator < ActiveRecord::Base
  has_many :accounts

  validates_uniqueness_of :symbol, scope: :symbol, message: "Symbole déjà utilisé"

end
