class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :phone, :date_of_birth, :address, :city, :state, :postal_code, :gender, :medical_history])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fname, :lname, :phone, :date_of_birth, :address, :city, :state, :postal_code, :gender, :medical_history])
  end
end
