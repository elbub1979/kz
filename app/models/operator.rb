# frozen_string_literal: true

class Operator < ApplicationRecord
  validates :name, presence: true
  has_many :mobile_phones
  has_many :internal_phones
end
