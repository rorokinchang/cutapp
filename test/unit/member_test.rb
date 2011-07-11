require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  def setup
    @m = members(:one)
  end
  
  def teardown
    @m = nil
  end
  
  test "where method" do
    result = Member.where(:email => 'aaa@aaa.aaa').first
    assert_instance_of Member, result, 'result is not instance of Book'
    assert_equal @m.email, result.email, 'email colum is wrong' 
    assert_equal @m.name, result.name, 'name colum is wrong' 
    assert_equal @m.age, result.age, 'age colum is wrong' 
  end
  
  test "member save" do
    member = Member.new({
      :email => 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
      :name => 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
      :age => '200',
    })
    assert member.save, 'Failures to save'
  end
  
  test "member save ng presence" do
    member = Member.new({
      :email => '',
      :name => '',
      :age => '',
    })
    assert !member.save, 'Success to save'
  end

end
