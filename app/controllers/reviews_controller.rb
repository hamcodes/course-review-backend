class ReviewsController < ApplicationController
  
    before_action :set_course
  
    def index
      @reviews = @course.reviews
      render json: @reviews
    end
  
    def show
      @review = @course.reviews.find_by(id: params[:id])
      render json: @review
    end
  
    def create
      @review = @course.reviews.new(review_params)
      if @review.save
        render json: @course
      else
        render json: {error: 'Unable to create a new review.'}
      end
    end
  
    def destroy
      @review = Review.find(params['id'])
      @course = Course.find(@review.course_id)
      @review.destroy
      render json: @course
    end
  
    private
    def review_params
      params.require(:review).permit(:description, :course_id)
    end
  
    def set_course
      # binding.pry
      # @course = Course.find(params[:course_id])
      unless @course = Course.where(id: params[:course_id]).first
        redirect_to courses_path, flash: {alert: "Course doesn't exists"}
      end
    end
  
  end 
end
