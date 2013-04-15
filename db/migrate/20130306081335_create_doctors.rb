class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :fio
      t.text :description
      t.integer :speciality_id
      t.integer :worktime_id

      t.timestamps
    end
    add_attachment :doctors, :photo
  end
end
