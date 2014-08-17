# This migration comes from waste (originally 20140817104352)
class CreateWasteProperties < ActiveRecord::Migration
  def change
    create_table :waste_properties do |t|
      t.string :uprn

      t.timestamps
    end
  end
end
