# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not create new User without fname & lname' do
    user = User.new
    user.lname = 'Lname'
    assert_not user.save, 'Dont create without fname'

    user = User.new
    user.fname = 'Fname'
    assert_not user.save, 'Dont create without lname'
  end

  test 'should not create new User with numbers in fname & lname' do
    user = User.new
    user.lname = 'Lname12'
    user.fname = 'Fname'
    assert_not user.save, 'Dont create with numbers in fname & lname'

    user = User.new
    user.lname = 'Lname'
    user.fname = 'Fname12'
    assert_not user.save, 'Dont create with numbers in fname & lname'

    user.pname = 'Pname12'
    assert_not user.save, 'Dont create with numbers in pname'
  end

  test 'should not get full name from instance func with/without pname' do
    assert_not_equal('Aname F.', users(:one).full_name)
    assert_not_equal('Aname F.P.', users(:two).full_name)
  end

  test 'should create new User with fname & lname' do
    user = User.new
    user.lname = 'Lname'
    user.fname = 'Fname'
    assert user.save, 'Create with fname & lname'
  end

  test 'get full name from instance func with/without pname' do
    assert_equal('Lname F.', users(:one).full_name)
    assert_equal('Lname F.P.', users(:two).full_name)
  end

  test 'user has cabinet' do
    assert_equal('514', users(:three).cabinet.number)
  end
end
