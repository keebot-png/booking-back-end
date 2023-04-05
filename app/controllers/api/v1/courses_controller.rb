class Api::V1::CoursesController < ApplicationController
  before_action :authenticate_user!
  # GET /courses
  def index
    @courses = Course.all
    render json: @courses
  end
end
