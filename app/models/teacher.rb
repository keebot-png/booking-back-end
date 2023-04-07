class Teacher < ApplicationRecord
  belongs_to :course
  has_many :reservations
  has_many :users, through: :reservations
end
