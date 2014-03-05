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
		# array = [600]

		# array.each do |start|
		# members = @gb.lists.members({:id => '71726be0ba', :opts => {:start => start, :limit => 100}})
		# 	members['data'].each do |member|
		# 		puts member['merges']['EMAIL'] == 'info@spoonuniversity.com'
		# 		end
		# end
		# binding.pry
		

	end

	def staff
    sort_by = params[:sort_by]

    if sort_by == 'position'
    	@students = User.active
			@students.sort!{ |a,b| b.position <=> a.position }
	 	elsif sort_by == 'name'
    	@students = User.order('last_name').active
    else
    	@students = User.order('school_id').active
  	end

	end


	def fonts
	end

end
