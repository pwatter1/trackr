class AddTrackruserIdToRunninglogs < ActiveRecord::Migration
  def change
    add_column :runninglogs, :trackruser_id, :integer
  end
end
