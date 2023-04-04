class Api::V1::CoursesController < ApplicationController
  # GET /courses
  def index
    @courses = Course.all
    render json: @courses
  end

  # POST /
  
end
