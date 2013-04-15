class Doctor < ActiveRecord::Base
  attr_accessible :description, :fio, :photo , :speciality_id, :worktime_id

  has_attached_file  :photo

  belongs_to :worktime
  belongs_to :speciality
  has_many :consultations
  has_many :articles
end
