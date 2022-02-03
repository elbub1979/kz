# frozen_string_literal: true

class User < ApplicationRecord
  validates :fname, :lname, presence: true, format: { with: /\A[A-zА-яЁё]+\z/ }
  validates :pname, format: { with: /\A[A-zА-яЁё]+\z/ }, if: :pname

  belongs_to :cabinet, optional: true
  belongs_to :position, optional: true
  belongs_to :department, optional: true
  has_many :mobile_phones
  has_many :internal_phones

  before_save :down_case

  def all_mobile_phones
    # mobile_phones.map(&:number).join("\n")
    arr = mobile_phones.each_with_object([]) do |obj, accum|
      accum << obj.number
    end
    arr.join("\n").html_safe
  end

  def all_internal_phones
    internal_phones.map(&:number).join("\n")
  end

  def full_name
    name = "#{lname.capitalize} #{fname[0].upcase}"
    pname ? "#{name}.#{pname[0].upcase}." : "#{name}."
  end

  private

  def down_case
    self.email = email.downcase
  end
end
