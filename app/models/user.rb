class User < ApplicationRecord
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist

  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :reservations
  has_many :teachers, through: :reservations
end
