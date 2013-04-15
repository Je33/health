class Speciality < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :doctors
  has_many :services
  has_many :articles

end
