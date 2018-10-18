class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to school_class_path(@student)
  end

  def show
    @student = SchoolClass.find(params[:id])
  end

  def edit
    @student = SchoolClass.find(params[:id])
  end

  def update
    @student = SchoolClass.find(params[:id])
    @student.update(post_params(:title, :room_number))
    redirect_to school_class_path(@student)
  end

  private

  def post_params
    params.require(:student)
  end


end
