class Operator < ActiveRecord::Base

  validates_uniqueness_of :symbol, scope: :symbol, message: "Symbole déjà utilisé"

end
