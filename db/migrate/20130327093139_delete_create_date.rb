class DeleteCreateDate < ActiveRecord::Migration
  def change
    remove_column :worktimes, :create_date
  end

end
