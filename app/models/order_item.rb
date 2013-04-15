class OrderItem < ActiveRecord::Base
  attr_accessible :doctor_id, :order_id, :receipt_time, :result_message, :service_id
  belongs_to :order
  belongs_to :service
end
