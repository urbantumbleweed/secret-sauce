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

	def thanks
	end

	def staff
    sort_by = params[:sort_by]

    if sort_by == 'position'
    	@students = User.all
			@students.sort!{ |a,b| a.position <=> b.position }
	 	elsif sort_by == 'name'
    	@students = User.order('last_name')
    else
    	@students = User.order('school_id')
  	end

	end


	def fonts
	end

end
