class Doctor < ApplicationRecord

  has_many :appointments, dependent: :destroy
  
  # validations
  validates_presence_of :name
  validates_presence_of :specialization
  validates_presence_of :experience
  validates_presence_of :image
end
