class SchoolsController < ApplicationController

	before_filter :authenticate_user!

	def index
	end

	def show
		@school = School.find_by_name(params[:name])
	end

end
