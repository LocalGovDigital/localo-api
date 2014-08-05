# This migration comes from waste (originally 20140805150203)
class CreateWasteTypes < ActiveRecord::Migration
  def change
    create_table :waste_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
