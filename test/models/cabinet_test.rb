# frozen_string_literal: true

require 'test_helper'

class CabinetTest < ActiveSupport::TestCase
  test 'should not create new Cabinet without number' do
    cabinet = Cabinet.new
    assert_not cabinet.save, 'Dont create without number'
  end

  #   test 'should not create new Cabinet with number less 100' do
  #     cabinet = Cabinet.new(number: '3')
  #     assert_not cabinet.save, 'Dont create with number less 100'
  #   end

  test 'should not create new Cabinet with symbol only' do
    cabinet = Cabinet.new(number: 'asd')
    assert_not cabinet.save, 'Dont create with symbol only'
  end

  test 'should create new Cabinet with number only' do
    cabinet = Cabinet.new(number: '514')
    assert cabinet.save, 'Create with number only'
  end

  test 'should create new Cabinet with number and one symbol' do
    cabinet = Cabinet.new(number: '514A')
    assert cabinet.save, 'Create with number and one symbol'
  end

  test 'should create new Cabinet with number and one more symbol' do
    cabinet = Cabinet.new(number: '514AA')
    assert cabinet.save, 'Create with number and one more symbol'
  end

  test 'should add zero for number if number length less 100' do
    cabinet = Cabinet.create(number: '5')
    assert_equal('005', cabinet.number,
                 'Add zero for number if number length less 100')
  end
end
