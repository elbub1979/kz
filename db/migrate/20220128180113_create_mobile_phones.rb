class CreateMobilePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :mobile_phones do |t|
      t.string :number
      t.integer :operator_id

      t.timestamps
    end
  end
end
