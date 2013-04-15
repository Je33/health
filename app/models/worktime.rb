class Worktime < ActiveRecord::Base
  attr_accessible :description, :duration, :doctor_ids, :date, :start_day, :end_day
  has_many :doctors
end
