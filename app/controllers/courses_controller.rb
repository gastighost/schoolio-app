class CoursesController < ApplicationController
  def index
    @title = "All Courses"
    if params[:query].present?
      @courses = Course.search_by_subject_and_topic_and_school_year(params[:query])
    else
      @courses = Course.all
    end
  end

  def show
    @title = "Course"
    @course = Course.find(params[:id])
    @subtopics = @course.subtopics
    @lessons = []
    @subtopics.each do |subtopic|
      subtopic.lessons.each do |lesson|
        @lessons.push(lesson)
      end
    end
    @bookings = []
    @lessons.each do |lesson|
      lesson.bookings.each do |booking|
        @bookings.push(booking)
      end
    end
    @reviews = []
    @bookings.each do |booking|
      booking.reviews.each do |review|
        @reviews.push(review)
      end
    end
  end

  def new
    @title = "Add Course"
    @course = Course.new
  end

  def create
    @title = "Create Course"
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @title = "Edit Course"
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy
    @title = "Delete Course"
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:subject, :topic, :school_year, :performance_level, :photo)
  end
end
