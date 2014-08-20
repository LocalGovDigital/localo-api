class AddBs7666ToProperties < ActiveRecord::Migration
  def change
    add_column :waste_properties, :paon, :string
    add_column :waste_properties, :saon, :string
    add_column :waste_properties, :postcode, :string
    add_column :waste_properties, :post_town, :string
  end
end
