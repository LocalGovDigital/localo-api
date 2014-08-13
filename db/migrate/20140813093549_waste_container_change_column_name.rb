class WasteContainerChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :waste_containers, :type, :container_type
  end
end
