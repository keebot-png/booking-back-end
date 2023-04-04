class Api::V1::CoursesController < ApplicationController
  # GET /courses
  def index
    @courses = Course.all
    render json: @courses
  end

  # GET /course/id
  def show
    @course = Course.find(params[:id])
    render @course
  end

  # POST /
  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course
    else
      render error: { error: 'Operatin unsuccessful'}, status: 400
    end
  end

  def destroy
    
  private

  def course_params
    params.require(:course).permit(:title, :description, :course_outline, :image, :available)
  end
end