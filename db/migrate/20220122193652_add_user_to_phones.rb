class AddUserToPhones < ActiveRecord::Migration[6.1]
  def change
    add_reference :phones, :user, foreign_key: true
  end
end
