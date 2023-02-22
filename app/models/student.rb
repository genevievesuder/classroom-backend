class Student < ApplicationRecord
  belongs_to :teacher
  belongs_to :parent
  has_many :assignments

  has_secure_password
  validates_presence_of :first_name, :last_name, :email, :school_id
  validates :password, length: { minimum: 8 }, on: :create
  validates :email, uniqueness: true
  validates :school_id, uniqueness: true, length: { minimum: 6 }
end
