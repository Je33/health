class AddDateToWorktimes < ActiveRecord::Migration
  def change
    add_column :worktimes, :date, :date
  end
end
