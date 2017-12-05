class CreateRunningLogs < ActiveRecord::Migration
  def change
    create_table :running_logs do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
