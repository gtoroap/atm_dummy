class CreateAtms < ActiveRecord::Migration[5.2]
  def change
    create_table :atms do |t|
      t.string :title

      t.timestamps
    end
  end
end
