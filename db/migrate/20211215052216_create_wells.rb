class CreateWells < ActiveRecord::Migration[6.1]
  def change
    create_table :wells do |t|
      t.string :name
      t.string :complete
      t.string :facility
      t.string :company
      t.string :als

      t.timestamps
    end
  end
end
