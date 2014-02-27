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

	def next
		track = params[:track]		
		page = Page.find_by_name(params[:page]) 
		# ^^^ THIS ONLY WORKS IF THERES ONLY ONE PAGE WITH A NUME
		position = Position.find(params[:position])
		current_user.update_completion(position,page)
		page = position.next_page(page)

		redirect_to "/#{track}/#{position.name}/#{page.name}" 
	end

end
