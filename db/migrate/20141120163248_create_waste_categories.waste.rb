# This migration comes from waste (originally 20141120163112)
class CreateWasteCategories < ActiveRecord::Migration
  def change
    create_table :waste_categories do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
