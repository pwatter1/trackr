class ChangeRunninglogIdTypeInTrackrusersTable < ActiveRecord::Migration
  def change
    change_column :trackrusers, :runninglog_id, :string
  end
end
