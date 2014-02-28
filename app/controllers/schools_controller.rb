class SchoolsController < ApplicationController

	before_filter :authenticate_user!

	def index
    @schools = School.order("lower(name)").all
	end

  def show
    @school = School.find_by_shortname(params[:shortname])
  end

  def edit
    @school = School.find_by_shortname(params[:shortname])
  end

  def create
    @school = School.find_by_shortname(params[:shortname])
  end

  def admin
    @schools = School.all
  end


  def school_params
    params.require(:school).permit(:name, :shortname, :facebook_url, :twitter_url, :spoon_url, :instagram_url)
  end

end
