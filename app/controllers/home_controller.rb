class HomeController < ApplicationController
	before_filter :authenticate_user!

	def index
		if current_user.status.pages.count == 0 && user_session.empty?
			redirect_to welcome_path
		end
		if current_user.status.pages.empty? || current_user.status.pages.count == current_user.position.pages.count
			@page = current_user.position.pages.first
		else
			@page = current_user.status.pages.last
		end
	end

	def welcome
		user_session['welcomed'] = true
	end

	def thanks
	end

	def staff
		@students = User.active
	end

	def fonts
	end

end
