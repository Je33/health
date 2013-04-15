class RenameServicesSpecialtyToSpeciality < ActiveRecord::Migration
  def change
    rename_column :services, :specialty_id, :speciality_id
  end



end
