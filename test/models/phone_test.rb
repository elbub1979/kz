require "test_helper"

class PhoneTest < ActiveSupport::TestCase
  test 'should not create phone with invalid numbers' do
    numbers = %w[89225354959 99225454959 7922535495 7qwe5454979]
    numbers.each do |number|
      phone = Phone.new(number: number)
      assert_not phone.save, 'Invalid, phone create'
    end
  end

  test 'should create phone with valid numbers' do
    numbers = %w[79225354959 +79225454959]
    numbers.each do |number|
      phone = Phone.new(number: number)
      assert phone.save, 'Invalid, phone not create'
    end
  end
end
