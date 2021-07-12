require 'rails_helper'

RSpec.describe Doctor, type: :model do
  # Association test
  # ensure Doctor model has a 1:m relationship with the Appointment model
  it { should have_many(:appointments).dependent(:destroy) }

  # ensure Doctor model has a m:m relationship with the user model
  it { should have_many(:users).through(:appointments) }

  # Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:specialization) }
  it { should validate_presence_of(:experience) }
  it { should validate_presence_of(:image) }
end
