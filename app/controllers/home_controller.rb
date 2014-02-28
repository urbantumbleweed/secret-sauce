class HomeController < ApplicationController
	before_filter :authenticate_user!

	def index
		if current_user.status.pages.count == 0 && user_session.empty?
			redirect_to welcome_path
		end
	end

	def welcome
		user_session['welcomed'] = true
		
	end

end
