# This migration comes from waste (originally 20140817085233)
class CreateWasteRounds < ActiveRecord::Migration
  def change
    create_table :waste_rounds do |t|
      t.string :property
      t.integer :schedule_id

      t.timestamps
    end
  end
end
