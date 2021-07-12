class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user


  # validation
  validates_presence_of :appointment_date
end
