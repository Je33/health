class AddTimeToWorkTime < ActiveRecord::Migration
  def change
    add_column :worktimes, :start_day, :time
    add_column :worktimes, :end_day, :time

  end
end
