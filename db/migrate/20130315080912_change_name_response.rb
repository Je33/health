class ChangeNameResponse < ActiveRecord::Migration
  def change
    rename_column :consultations, :responce_message, :response_message
    remove_column :consultations, :responce
  end

end
