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
		page = params[:page]
		position = params[:position]
		if current_user.position == position
			unless current_user.pages.include?(page)
				current_user.pages << page
			end
		end
		page = position.next_page(page)

		redirect_to "/#{track}/#{position}/#{page}" 
	end

end
