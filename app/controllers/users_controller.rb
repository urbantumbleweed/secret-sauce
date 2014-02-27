class UsersController < ApplicationController
		before_filter :authenticate_user!

	def home
	end

	def show
		redirect_to user_session_path
	end

end
