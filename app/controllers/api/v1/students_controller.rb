class Api::V1::StudentsController < ApplicationController
  # 获取单个 Stuendt 详情
  #
  # GET /api/v1/students/:id
  def show
    begin 
      @student = Student.find(params[:id])
      render :json => @student
    rescue ActiveRecord::RecordNotFound => e
      not_found(e)
    end
  end
end
