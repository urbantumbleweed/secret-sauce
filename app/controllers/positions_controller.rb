class PositionsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@positions = Position.all
	end

	def editorial
		@position = Position.find_by_name(params[:position])
		@page = params[:page]
	end

	def marketing
		@position = Position.find_by_name(params[:position])
		@page = params[:page]
	end

	def photo
		@position = Position.find_by_name(params[:position])
		@page = params[:page]
	end

end
