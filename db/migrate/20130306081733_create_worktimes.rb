class CreateWorktimes < ActiveRecord::Migration
  def change
    create_table :worktimes do |t|
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
