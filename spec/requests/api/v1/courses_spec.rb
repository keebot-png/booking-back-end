require 'rails_helper'

RSpec.describe Course, type: :model do
  it { should have_many(:users).through(:enrollments) }
  it { should have_many(:teachers) }
  it { should have_many(:enrollments) }
end
