class Api::V1::TeachersController< ApplicationController

  # 获取 teachers 列表
  #
  # GET /api/v1/teachers
  def index
    @teachers = Teacher.all 
  end

  # 删除一个 teacher 及其所有课程的信息
  #
  # DELETE /api/v1/teachers/:id
  def destroy
    begin
      @teacher = Teacher.find(params[:id])
      @teacher.destroy
    rescue ActiveRecord::RecordNotFound => e
      not_found(e)
    end
  end
end
