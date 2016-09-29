class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :password, :password_confirm, :phone_number, :birthdate, :gender, :curp, :id_type, :id_number, :address_street, :address_number, :address_city, :address_zip_code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :first_name, :last_name, :password, :password_confirm, :phone_number, :birthdate, :gender, :curp, :id_type, :id_number, :address_street, :address_number, :address_city, :address_zip_code])
  end
end
