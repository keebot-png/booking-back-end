class Course < ApplicationRecord
  has_many :teachers
  has_many :users, through: :enrollments
end
