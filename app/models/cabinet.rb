# frozen_string_literal: true

class Cabinet < ApplicationRecord
  validates :number, presence: true, format: { with: /[0-9]{3}[A-Za-z]*/ }
  has_many :users

  before_validation :add_zero

  private

  def add_zero
    self.number = number.rjust(3, '0') unless number.nil?
  end
end
