class EventsController < ApplicationController
		before_filter :authenticate_user!

#     events GET    /events(.:format)                 events#index
	def index
		@events = Event.all
	end
#            POST   /events(.:format)                 events#create
	def create
		event = Event.create(event_params)
    redirect_to events_path(event)
	end
#  new_event GET    /events/new(.:format)             events#new
	def new
		@event = Event.new
	end
# edit_event GET    /events/:id/edit(.:format)        events#edit
	def edit
		@event = Event.find(params[:id])
	end
#      event GET    /events/:id(.:format)             events#show
	def show
		@event = Event.find(params[:id])
	end
#            PUT    /events/:id(.:format)             events#update
	def update
		event = Event.find(params[:id])
		event.update_attributes(event_params)
		redirect_to events_path(event)
	end
#            DELETE /events/:id(.:format)             events#destroy
	def destroy
		event = Event.find(params[:id])
		event.destroy
		redirect_to events_path
	end

	private

  def event_params
    params.require(:event).permit(:name, :school_id, :description, :success, :failure, :advice, :date)
  end



end
