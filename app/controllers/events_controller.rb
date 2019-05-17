class EventsController < ApplicationController
  	def index
    	@events = Event.all
    end

	def new
		@event = Event.new
	end

	def create

		@event = Event.new(event_params)
		if @event.save
			redirect_to edit_event_path(@event)
		end
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find params[:id]
	end

	def destroy
    	@event = Event.find_by_id(params[:id])
	    if @event.destroy
			redirect_to events_path
		end
	end

	def update
    	@event = Event.find params[:id]
		if @event.update_attributes params[:event]
			flash[:notice] = 'The User is successfully updated!'
			redirect_to events_path
		else
			flash[:error] = @event.errors.full_messages[0]
		  	redirect_to events_path
		end
	end

	def event_params
		params.require(:event).permit!
	end
end
