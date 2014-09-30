# This migration comes from waste (originally 20140930110341)
class AddScheduleToRound < ActiveRecord::Migration
  def change
    add_column :waste_rounds, :schedule, :string
  end
end
