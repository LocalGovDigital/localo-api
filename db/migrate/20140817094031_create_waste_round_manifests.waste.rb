# This migration comes from waste (originally 20140817090345)
class CreateWasteRoundManifests < ActiveRecord::Migration
  def change
    create_table :waste_round_manifests do |t|
      t.integer :round_id
      t.integer :container_id

      t.timestamps
    end
  end
end
