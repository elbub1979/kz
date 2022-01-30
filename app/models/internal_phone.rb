# frozen_string_literal: true

class InternalPhone < ApplicationRecord
  validates :number, :operator_id, presence: true
  belongs_to :operator
  belongs_to :user
end
