class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :pname
      t.string :lname
      t.string :nickname
      t.string :email
      t.string :password
      t.string :password_confirm
      t.references :cabinet, foreign_key: true

      t.timestamps
    end
  end
end
