class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :appointment


  # validation
  validates_presence_of :appointment_date
end
