class AddRunDateToRunningLogs < ActiveRecord::Migration
  def change
    add_column :runninglogs, :rundate, :datetime
  end
end
