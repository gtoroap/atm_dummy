class CreateAtmTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :atm_transactions do |t|
      t.integer :atm_id
      t.integer :withdrawn
      t.timestamps
    end
  end
end
