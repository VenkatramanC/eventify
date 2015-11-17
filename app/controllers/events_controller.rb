class EventsController < ApplicationController
  def new
    @event = Event.pretty_new
  end


  def create
    @event = Event.new(event_params) 
    @event.start_time = parse_time(:event , "start_time") 
    @event.end_time =  parse_time(:event , "end_time")
    @event.save
    redirect_to events_path 
  end

  def index
    @events = Event.all
  end

  def show 
    @event = Event.find(params[:id]) 
    @new_attend = Attend.new 
    @attends = Attend.all 
  end

  private
     def event_params
        params.require(:event).permit(:title , :description)
     end
  end
