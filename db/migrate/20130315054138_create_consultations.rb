class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :client_email
      t.string :client_fio
      t.text :question
      t.integer :responce
      t.text :responce_message
      t.integer :doctor_id

      t.timestamps
    end
  end
end
