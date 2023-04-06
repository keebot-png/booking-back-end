class Teacher < ApplicationRecord
  has_many :reservations
  belongs_to :course
end
