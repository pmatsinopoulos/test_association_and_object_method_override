class Object
  def foo
    puts 'in object'
  end
end

class Account < ActiveRecord::Base

  belongs_to :supplier

  validates :supplier_id, :presence => true

  nilify_blanks

  def foo
    puts 'in account'
  end

  def to_s
    puts 'in account'
  end

end

