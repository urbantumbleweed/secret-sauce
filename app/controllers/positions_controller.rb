class PositionsController < ApplicationController
	before_filter :authenticate_user!
	

	def index
		@positions = Position.all
	end

	def position
		@position = Position.find_by_shortname(params[:position])
		@page = Page.find_by_shortname(params[:page])
	end

	def next
		track = params[:track]		
		page = Page.find_by_shortname(params[:page])
		position = Position.find(params[:position])
		current_user.update_completion(position, page)
		page = position.next_page(page)
		if page == nil
			redirect_to agreement_path
		else
			redirect_to "/#{track}/#{position.shortname}/#{page.shortname}" 
		end
	end

	def agreement

	end

	def agree
		current_user.agreed = true
		current_user.save!
		redirect_to thanks_path
	end

	def thanks

	end

end
