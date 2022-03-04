class LessonsController < ApplicationController
  def show
    @title = "Lesson"
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:subtopic_id])
    @lesson = Lesson.find(params[:id])
  end

  def new
    @title = "Create Lesson"
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:subtopic_id])
    @lesson = Lesson.new
  end

  def create
    @title = "Create Lesson"
    @lesson = Lesson.new(lesson_params)
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:subtopic_id])
    @lesson.subtopic = @subtopic
    if @lesson.save
      redirect_to course_subtopic_lesson_path(@course, @subtopic, @lesson)
    else
      render :new
    end
  end

  def edit
    @title = "Edit Lesson"
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:subtopic_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
    @title = "Update Lesson"
    @course = Course.find(params[:course_id])
    @lesson = Lesson.find(params[:id])
    @subtopic = @lesson.subtopic
    @lesson.update(lesson_params)
    redirect_to course_subtopic_lesson_path(@course, @subtopic, @lesson)
  end

  def destroy
    @title = "Delete Lesson"
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to course_subtopic_path(@lesson.subtopic.course, @lesson.subtopic)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:date, :time, :duration, :max_capacity)
  end
end
