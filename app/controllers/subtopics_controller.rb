class SubtopicsController < ApplicationController
  def show
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:id])
  end

  def new
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.new
  end

  def create
    @subtopic = Subtopic.new(subtopic_params)
    @course = Course.find(params[:course_id])
    @subtopic.course = @course
    if @subtopic.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:id])
  end

  def update
    @subtopic = Subtopic.find(params[:id])
    @course = @subtopic.course
    @subtopic.update(subtopic_params)
    redirect_to course_subtopic_path(@course, @subtopic)
  end

  def destroy
    @subtopic = Subtopic.find(params[:id])
    @subtopic.destroy
    redirect_to course_path(@subtopic.course)
  end

  private

  def subtopic_params
    params.require(:subtopic).permit(:description)
  end
end
