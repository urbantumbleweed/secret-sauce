class SchoolsController < ApplicationController
	def index
	end

	def show
		@school = School.find_by_name(params[:name])
	end

end
