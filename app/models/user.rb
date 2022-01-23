# frozen_string_literal: true

class User < ApplicationRecord
  validates :fname, :lname, presence: true, format: { with: /\A[A-zА-яЁё]+\z/ }
  validates :pname, format: { with: /\A[A-zА-яЁё]+\z/ }, if: :pname

  belongs_to :cabinet, optional: true
  belongs_to :position, optional: true
  belongs_to :department, optional: true
  has_many :phones

  before_save :down_case

  def full_name
    name = "#{lname.capitalize} #{fname[0].upcase}"
    pname ? "#{name}.#{pname[0].upcase}." : "#{name}."
  end

  def down_case
    self.email = email.downcase!
  end
end
