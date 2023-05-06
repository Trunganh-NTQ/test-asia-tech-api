class Api::V1::StudentsController < Api::V1::ApplicationController
  before_action :set_student, only: %i[show update destroy]

  def index
    @params = params[:q]
    @q = Student.ransack(@params)
    @students = @q.result.page(params[:page]).per(params[:per] || 10)
  end

  def search
    index
    render :index
  end

  def show
    render json: @student
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      render_success
    else
      render_bad_request_with_errors(@student.errors)
    end
  end

  def update
    if @student.update(student_params)
      render_success
    else
      render_bad_request_with_errors(@student.errors)
    end
  end

  def destroy
    render 'api/v1/destroy_success_with_id', id: @student.id if @student.destroy
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :grade, :birthday, :phone)
    end
end
