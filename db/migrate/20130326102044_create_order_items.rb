class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :receipt_time
      t.text :result_message
      t.integer :order_id
      t.integer :doctor_id
      t.integer :service_id

      t.timestamps
    end
  end
end
