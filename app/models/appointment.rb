class Appointment < ApplicationRecord
  belongs_to :doctor

  # validation
  validates_presence_of :appointment_date
end
