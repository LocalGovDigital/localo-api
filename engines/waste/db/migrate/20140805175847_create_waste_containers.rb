class CreateWasteContainers < ActiveRecord::Migration
  def change
    create_table :waste_containers do |t|
      t.integer :size
      t.string :color
      t.string :type

      t.timestamps
    end
  end
end
