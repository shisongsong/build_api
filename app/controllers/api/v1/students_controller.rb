class Api::V1::StudentsController< ApplicationController
  # 获取单个 Stuendt 详情
  #
  # GET /api/v1/students/:id
  def show
    begin 
      #@student = Student.includes(:courses, courses: [:teacher]).find(params[:id])
      @student = Student.find(params[:id])
      render :json => {
        :student => @student.as_json(include: {
          courses: {
            include: :teacher
          }
        })
      }
    rescue ActiveRecord::RecordNotFound => e
      not_found(e)
    end
  end
end
