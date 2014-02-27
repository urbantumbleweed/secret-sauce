class SchoolsController < ApplicationController

	before_filter :authenticate_user!

	def index
    @schools = School.all
	end

  def show
    @school = School.find_by_shortname(params[:shortname])
  end

  def admin
    @schools = School.all
  end


  def school_params
    params.require(:school).permit(:name, :shortname, :fb_url, :twitter_url, :spoon_url, :instagram_url)
  end

end
