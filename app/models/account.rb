class Account < ActiveRecord::Base
  has_many :statements
  belongs_to :operator
end
