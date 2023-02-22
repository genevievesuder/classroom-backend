class Teacher < ApplicationRecord
    has_many :students
    has_many :parents, through: :students
    has_many :assignments

    has_secure_password
    validates_presence_of :title, :last_name, :email, :grade_level, :school
    validates :password, length: { minimum: 8 }, on: :create
    validates :email, uniqueness: true
end
