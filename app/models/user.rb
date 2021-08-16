class User < ApplicationRecord
  has_secure_password

  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  # validations
  validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :age
end
