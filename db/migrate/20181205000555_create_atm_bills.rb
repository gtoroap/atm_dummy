class CreateAtmBills < ActiveRecord::Migration[5.2]
  def change
    create_table :atm_bills do |t|
      t.integer :atm_id
      t.integer :bill_id
      t.timestamps
    end
  end
end
