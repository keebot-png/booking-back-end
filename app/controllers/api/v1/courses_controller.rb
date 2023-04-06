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

  # POST /
  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course
    else
      render error: { error: 'Operatin unsuccessful' }, status: 400
    end
  end

  # DELETE
  def destroy
    @course = Course.find(params[:id])
    if @course.destroy
      render json: { message: 'Course deleted successfully.' }, status: 200
    else
      render json: { error: 'Course could not be deleted.' }, status: 400
    end
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :course_outline, :image, :available)
  end
end
