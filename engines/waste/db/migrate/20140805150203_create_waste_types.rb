class CreateWasteTypes < ActiveRecord::Migration
  def change
    create_table :waste_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
