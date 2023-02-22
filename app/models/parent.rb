class Parent < ApplicationRecord
    has_many :students
    has_many :teachers, through: :students
    has_many :assignments, through: :students

    has_secure_password
    validates_presence_of :first_name, :last_name, :email
    validates :password, length: { minimum: 8 }, on: :create
    validates :email, uniqueness: true
end
