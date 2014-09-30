class AddScheduleToRound < ActiveRecord::Migration
  def change
    add_column :rounds, :schedule, :string
  end
end
