class UsersController < ApplicationController
		before_filter :authenticate_user!

	def home
	end

	def show
		redirect_to user_session_path
	end

  def update
    respond_to do |format|
      format.html {}
      format.json do
        user = User.find( params[:id] )
        user.active = params[:active]
        user.save

        render :json => user.to_json
      end
    end

  end


end
