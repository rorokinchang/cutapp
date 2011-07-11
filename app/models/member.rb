class Member < ActiveRecord::Base
  validates:email,
    :presence => true,
    :uniqueness => true,
    :length => {:maximum => 200 }
  validates:name,
    :presence => true,
    :length => {:maximum => 100 }
  validates:age,
    :numericality => {:only_integer => true, :less_than => 201 }
end
