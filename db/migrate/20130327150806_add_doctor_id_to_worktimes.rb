class AddDoctorIdToWorktimes < ActiveRecord::Migration
  def change
    add_column :worktimes, :doctor_id, :integer
  end
end
