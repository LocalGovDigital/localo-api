# This migration comes from waste (originally 20140817111117)
class AddPropertyIdToRounds < ActiveRecord::Migration
  def change
    add_column :waste_rounds, :property_id, :integer

    remove_column :waste_rounds, :property, :string
  end
end
