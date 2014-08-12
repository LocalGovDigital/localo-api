# This migration comes from waste (originally 20140812155822)
class CreateWasteCollections < ActiveRecord::Migration
  def change
    create_table :waste_collections do |t|
      t.string :name

      t.timestamps
    end
  end
end
