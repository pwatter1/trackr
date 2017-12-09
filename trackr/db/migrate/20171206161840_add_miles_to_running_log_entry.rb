class AddMilesToRunningLogEntry < ActiveRecord::Migration
  def change
    add_column :runninglogs, :miles, :integer
  end
end
