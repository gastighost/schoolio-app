class SubtopicsController < ApplicationController
  def show
    @title = "Your Subtopic"
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:id])
  end

  def new
    @title = "Add Subtopic"
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.new
  end

  def create
    @title = "Create Subtopic"
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
    @title = "Change Subtopic"
    @course = Course.find(params[:course_id])
    @subtopic = Subtopic.find(params[:id])
  end

  def update
    @title = "Update Subtopic"
    @subtopic = Subtopic.find(params[:id])
    @course = @subtopic.course
    @subtopic.update(subtopic_params)
    redirect_to course_subtopic_path(@course, @subtopic)
  end

  def destroy
    @title = "Delete Subtopic"
    @subtopic = Subtopic.find(params[:id])
    @subtopic.destroy
    redirect_to course_path(@subtopic.course)
  end

  private

  def subtopic_params
    params.require(:subtopic).permit(:description)
  end
end
