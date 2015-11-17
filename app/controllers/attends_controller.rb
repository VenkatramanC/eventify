class AttendsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @attend = @event.attends.new
    @attend.email =params[:attend][:email]
    flash[:alert] = "Please Enter your email" unless @attend.save
    
    redirect_to events_path
  end
end
