class ApplicationController < ActionController::API

  def not_found(e)
    render :json => e.to_json, :status => 404
  end
end
