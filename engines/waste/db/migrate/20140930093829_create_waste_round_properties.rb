class CreateWasteRoundProperties < ActiveRecord::Migration
  def change
    create_table :waste_round_properties do |t|
      t.integer :round_id
      t.integer :property_id

      t.timestamps
    end
  end
end
