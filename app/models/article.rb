class Article < ActiveRecord::Base
  attr_accessible :name, :description, :doctor_id
  belongs_to :doctor
  belongs_to :speciality

end
