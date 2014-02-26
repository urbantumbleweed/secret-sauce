class Users::RegistrationsController < Devise::RegistrationsController

	def new
			@positions = Position.all 
			@schools = School.all
			super
	end

  private

  def sign_up_params
    allow = [:email, :first_name, :last_name, :password, :password_confirmation, :school_id, :user_id, ]
    params.require(:user).permit(allow)
  end

end