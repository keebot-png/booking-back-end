class Api::V1::TeachersController < ApplicationController
  before_action :authenticate_user!
  def index
    @teachers = Teacher.joins(:course).where(courses: { id: params[:course_id] })

    render json: @reservations
  end

  def show
    @teacher = Teacher.find(params[:id])
    render json: @teacher
  end
end
