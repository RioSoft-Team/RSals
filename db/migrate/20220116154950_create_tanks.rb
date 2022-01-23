class CreateTanks < ActiveRecord::Migration[6.1]
  def change
    create_table :tanks do |t|
      t.string :supplier
      t.string :serial
      t.references :well, null: false, foreign_key: true

      t.timestamps
    end
  end
end
