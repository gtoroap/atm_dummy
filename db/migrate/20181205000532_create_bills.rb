class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer :value
      t.string :serial
      t.string :currency

      t.timestamps
    end
  end
end
