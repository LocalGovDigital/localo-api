# This migration comes from waste (originally 20141120135720)
class CreateWasteServices < ActiveRecord::Migration
  def change
    create_table :waste_services do |t|
      t.string :name
      t.string :frequency
      t.text :instructions
      t.string :esd_url

      t.timestamps
    end
  end
end
