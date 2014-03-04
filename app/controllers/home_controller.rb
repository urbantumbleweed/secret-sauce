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

	def staff_all
		redirect_to '/staff/sort_by/last_name'
	end

	def staff
    sort_by = params[:sort_by] || 'school_id'

    if sort_by == 'position'
    	@students = User.active
			@students.sort!{ |a,b| b.position <=> a.position }
    else
    	@students = User.order(sort_by).active
  	end
	end

end
