class ChangeNameOfRunninglogsTable < ActiveRecord::Migration
  def change
    rename_table :running_logs, :runninglogs
  end
end
