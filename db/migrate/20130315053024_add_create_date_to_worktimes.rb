class AddCreateDateToWorktimes < ActiveRecord::Migration
  def change
    add_column :worktimes, :create_date, :date
  end
end
