class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  has_many :teachers

  # def teachers
  #   Teacher.joins(:course).where(courses: { id: params[:course_id] })
  # end
end
