# frozen_string_literal: true

class Position < ApplicationRecord
  validates :title, presence: true

  has_many :users
end
