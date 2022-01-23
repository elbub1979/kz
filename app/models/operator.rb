# frozen_string_literal: true

class Operator < ApplicationRecord
  validates :name, presence: true
  has_many :phones
end
