require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  # ensure user model has a 1:m relationship with the Appointment model
  it { should have_many(:appointments).dependent(:destroy) }

  # ensure user model has a m:m relationship with the doctor model
  it { should have_many(:doctors).through(:appointments) }
  # Validation tests
  # ensure columns are present before saving
  # it { should validate_presence_of(:username) }
  # it 'should validates presence of username' do
  #   expect(:username).not_to be(falsy)
  # end
  # it { should validate_presence_of(:password) }
  # it { should validate_presence_of(:age) }
  
end
