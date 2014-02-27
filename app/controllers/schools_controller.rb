class SchoolsController < ApplicationController

	before_filter :authenticate_user!

	def index
    @schools = School.all
	end

  def show
    @school = School.find_by_name(params[:name])
  end

  def school_params
    params.require(:school).permit(:name, :fbUrl, :twitterUrl, :spoonUrl, :instagramUrl)
  end

end
