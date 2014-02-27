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
		position = Position.find(params[:position])
		if current_user.position == position
			unless current_user.status.pages.include?(page)
				current_user.status.pages += [page]
				current_user.status.pages_will_change!
				binding.pry
			end
		end
		page = position.next_page(page)

		redirect_to "/#{track}/#{position.name}/#{page}" 
	end

end
