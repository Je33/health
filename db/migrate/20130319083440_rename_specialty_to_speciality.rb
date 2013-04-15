class RenameSpecialtyToSpeciality < ActiveRecord::Migration
  def up
    rename_table :specialties, :specialities
  end

  def down
    rename_table :specialities, :specialties
  end
end
