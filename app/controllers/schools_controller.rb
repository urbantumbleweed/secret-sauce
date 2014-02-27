class SchoolsController < ApplicationController
	def index
    @schools = School.all
	end

  def show
    @school = School.find_by_name(params[:name])
  end

  def admin
    @schools = School.all
  end


  def school_params
    params.require(:school).permit(:name, :fbUrl, :twitterUrl, :spoonUrl, :instagramUrl, :students)
  end

end
