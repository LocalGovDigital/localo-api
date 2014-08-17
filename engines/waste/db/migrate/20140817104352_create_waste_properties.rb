class CreateWasteProperties < ActiveRecord::Migration
  def change
    create_table :waste_properties do |t|
      t.string :uprn

      t.timestamps
    end
  end
end
