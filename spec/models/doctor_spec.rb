require 'rails_helper'

RSpec.describe Doctor, type: :model do
  # Association test
  it { should have_many(:appointments).dependent(:destroy) }

  it { should have_many(:users).through(:appointments) }

  # Validation tests
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:specialization) }
  it { should validate_presence_of(:experience) }
  it { should validate_presence_of(:image) }
end
