class AddRunningLogsToTrackruser < ActiveRecord::Migration
  def change
    add_reference :trackrusers, :runninglog, index: true, foreign_key: true
  end
end
