class EventsController < ApplicationController

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.valid?
            @event.save
        else 
            render 'new'  
        end
    end

    def show
        @event = Event.find(event_params)
    end

    def update
    end

    private

    def event_params 
        params.require(:event).permit(
            :sourceIP,
            :destinationIP
        )
    end
end
