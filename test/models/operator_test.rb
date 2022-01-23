# frozen_string_literal: true

require 'test_helper'

class OperatorTest < ActiveSupport::TestCase
  test 'should not create new Operator without name' do
    operator = Operator.new
    assert_not operator.save, 'Not create new Operator without name'
  end

  test 'should create new Operator with string name' do
    operator = Operator.new(name: 'BeeLine')
    assert operator.save, 'Create new Operator with name'
  end

  test 'should create new Operator with integer name' do
    operator = Operator.new(name: 12_345)
    assert operator.save, 'Create new Operator with name'
  end
end
