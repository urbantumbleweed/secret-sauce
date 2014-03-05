class ApplicationController < ActionController::Base

	before_filter :configure_permitted_parameters, if: :devise_controller?
	before_action :setup_gibbon

  def setup_mcapi
    @mc = Mailchimp::API.new(ENV['MAILCHIMP_API_KEY'])
  end

  def setup_gibbon
    @gb = Gibbon::API.new(ENV['MAILCHIMP_API_KEY'])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:email, :first_name, :last_name, :school_id, :phone_number, :password, :password_confirmation, :current_password]
    devise_parameter_sanitizer.for(:account_update) << [:email, :first_name, :last_name, :school_id, :phone_number, :password, :password_confirmation, :current_password]
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
end
