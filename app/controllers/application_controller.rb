class ApplicationController < ActionController::API
  before_action :set_cors_headers, :configure_permitted_parameters, if: :devise_controller?
  respond_to :json

  private

  def set_cors_headers
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allo-Methods'] = 'POST, GET, DELETE'
    response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
  end
end
