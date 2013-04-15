class Order < ActiveRecord::Base
  attr_accessible :client_email, :client_fio, :client_phone, :report, :sum
  belongs_to :service
  has_many :order_items
  has_many :services, :through => :order_items
end
