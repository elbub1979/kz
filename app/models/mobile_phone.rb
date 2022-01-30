# frozen_string_literal: true

class MobilePhone < ApplicationRecord
  validates :number, :operator_id, presence: true
  belongs_to :operator
  belongs_to :user
end
