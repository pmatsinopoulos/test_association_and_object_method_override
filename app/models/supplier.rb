class Supplier < ActiveRecord::Base

  validates :name, :presence => true

  has_one :account

  nilify_blanks
end
