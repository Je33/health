class Consultation < ActiveRecord::Base
  attr_accessible :question, :response_message
  belongs_to :doctor
end
