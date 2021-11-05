class EventsController < ApplicationController
    before_action :current_user, only[:create, :new, :update]

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
        if @event.valid?
            flash[:message] = "Source IP Address is valid"
        else 
            flash[:message] = "Source IP Address is not valid"
        # @user = User.find_by_id()
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
