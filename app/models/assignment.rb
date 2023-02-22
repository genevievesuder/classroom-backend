class Assignment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  validates_presence_of :subject, :name, :due_date
end
