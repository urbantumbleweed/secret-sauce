class UsersController < ApplicationController
		before_filter :authenticate_user!

	def home
		@user = current_user
	end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :active, :school, :email)
  end


end
