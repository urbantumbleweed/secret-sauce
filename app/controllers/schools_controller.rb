class SchoolsController < ApplicationController
	def index
    @schools = School.all
      respond_to do |format|
      format.html
      format.json {render json:  @schools}
    end
	end


  def school_params
    params.require(:school).permit(:name, :fbUrl, :twitterUrl, :spoonUrl, :instagramUrl)
  end
end
