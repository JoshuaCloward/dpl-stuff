class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to root_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update
      redirect_to students_path
    else
      render :new
    end
  end


  def student_params
    params[:student]
    params.require(:student).permit(:name, :course)
  end

end
