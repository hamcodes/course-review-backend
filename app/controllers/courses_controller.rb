class CoursesController < ApplicationController

  before_action :set_course, only: [:show, :update, :destroy]

  def index 
      @courses = Course.all
      render json: @courses
  end 

  def show
      render json: @course
  end

  def create
      @course = Course.new(course_params)
      if @course.save
        render json: @course
      else
        render json: {error: 'Unable to create a new course.'}
      end
  end

  def update
      if @course.update(course_params)
        @course.save
        render json: @course
      else
        render json: {error: 'Unable to edit the course.'}
      end
  end
  
  def destroy
      @course.destroy
      render json: @course
  end

  private
  def course_params
    params.require(:course).permit(:id, :name, :address, :image, :played, :international)
  end

  def set_course
    @course = Course.find(params[:id])
  end

end 
end
