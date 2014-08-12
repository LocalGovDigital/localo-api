# This migration comes from waste (originally 20140812055442)
class CreateWasteItems < ActiveRecord::Migration
  def change
    create_table :waste_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
