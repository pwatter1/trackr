class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :wgid
      t.integer :goal

      t.timestamps null: false
    end
  end
end
