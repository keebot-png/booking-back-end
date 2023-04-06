class Reservation < ApplicationRecord
  belongs_to :teacher
  belongs_to :user
  belongs_to :course
end
