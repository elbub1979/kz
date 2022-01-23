# frozen_string_literal: true

class Department < ApplicationRecord
  validates :title, presence: true

  has_many :user
end
