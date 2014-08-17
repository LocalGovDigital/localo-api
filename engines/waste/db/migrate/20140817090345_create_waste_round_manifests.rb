class CreateWasteRoundManifests < ActiveRecord::Migration
  def change
    create_table :waste_round_manifests do |t|
      t.integer :round_id
      t.integer :container_id

      t.timestamps
    end
  end
end
