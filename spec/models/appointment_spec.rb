require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # Association test
  # ensure an appointment record belongs to a single doctor record
  it { should belong_to(:doctor) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:appointment_date) }
end
