class CreateWasteItems < ActiveRecord::Migration
  def change
    create_table :waste_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
