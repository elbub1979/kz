# frozen_string_literal: true

class Phone < ApplicationRecord
  validates :number, presence: true
  #   validates :number, format: { with: /\A((\+7|7)+([0-9]){10})\z/ },
  #                      if: :internal_number

  belongs_to :operator, optional: true
  belongs_to :user, optional: true

  private

  def internal_number
    :number.size > 4
  end
end
