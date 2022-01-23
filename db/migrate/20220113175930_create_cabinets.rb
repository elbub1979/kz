class CreateCabinets < ActiveRecord::Migration[6.1]
  def change
    create_table :cabinets do |t|
      t.string :number

      t.timestamps
    end
  end
end
