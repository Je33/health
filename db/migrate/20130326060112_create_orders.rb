class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :client_fio
      t.string :client_email
      t.string :client_phone
      t.string :sum
      t.integer :report

      t.timestamps
    end
  end
end
