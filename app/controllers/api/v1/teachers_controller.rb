class Api::V1::TeachersController < ApplicationController
  before_action :authenticate_user!
  def index
    @teachers = Teacher.joins(:courses).joins(:enrollments).where(enrollments: { user_id: current_user.id }).distinct
  end

  def show
    @teacher = Teacher.find(params[:id])
  end
end
