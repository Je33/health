class DeleteDescription < ActiveRecord::Migration
  def change
    remove_column :worktimes, :description
  end

end
