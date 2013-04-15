class Service < ActiveRecord::Base
  attr_accessible :cost, :description, :name, :parent_id, :speciality_id
  belongs_to :speciality
  has_many :order_items
  has_many :orders, :through => :order_items

end
