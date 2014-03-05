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

		@lists = @gb.lists.list

		 # begin
   #    lists_res = @mc.lists.list
   #    @lists = lists_res['data']
   #  rescue Mailchimp::Error => ex
   #    if ex.message
   #      flash[:error] = ex.message
   #    else
   #      flash[:error] = "An unknown error occurred"
   #    end
   #    redirect_to thanks_path
   #  end
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

	def subscribe
		list_id = params[:list_id]
		email = params['email']
end

	# def subscribe
	# 	list_id = params[:list_id]
	# 	email = params['email']
 #    begin
 #    	@mc.lists.subscribe(params[:list_id],
 #                     {'email' => email,
 #                     'merge_vars' => {:groupings => [{:id => '6749',
 #                                                     :groups => ["interest-1"]
 #                                                   		}]
 #                                    },
 #                     'update_existing' => true})
 #      # @mc.lists.subscribe(params[:list_id], {'email' => email})
 #      flash[:success] = "#{email} subscribed successfully"
 #    rescue Mailchimp::ListAlreadySubscribedError
 #      flash[:error] = "#{email} is already subscribed to the list"
 #    rescue Mailchimp::ListDoesNotExistError
 #      flash[:error] = "The list could not be found"
 #      redirect_to thanks_path
 #      return
 #    rescue Mailchimp::Error => ex
 #      if ex.message
 #        flash[:error] = ex.message
 #      else
 #        flash[:error] = "An unknown error occurred"
 #      end
 #    end
 #    redirect_to thanks_path
	# end


	def fonts
	end

end
