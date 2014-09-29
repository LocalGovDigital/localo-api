class AddRoundsColToProperties < ActiveRecord::Migration
  def change
    add_column :waste_properties, :round_id, :integer

    remove_column :waste_rounds, :property_id, :integer
  end
end
