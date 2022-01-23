class AddPositionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :position, foreign_key: true
  end
end
