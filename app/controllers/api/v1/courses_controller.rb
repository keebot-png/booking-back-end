class Api::V1::CoursesController < ApplicationController
  before_action :authenticate_user!
  # GET /courses
  def index
    @courses = Course.all
    render json: @courses
  end

  # GET /course/id
  def show
    @course = Course.find(params[:id])
    render json: @course
  end
end
