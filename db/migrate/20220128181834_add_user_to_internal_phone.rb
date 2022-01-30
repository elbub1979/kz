class AddUserToInternalPhone < ActiveRecord::Migration[6.1]
  def change
    add_reference :internal_phones, :user, foreign_key: true
  end
end
