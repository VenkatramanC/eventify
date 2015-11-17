class AttendsController < ApplicationController
  def create
    @attend = Attend.new
    @attend.email =params[:attend][:email]
    
    flash[:alert] = "Please Enter your email" unless @attend.save
    redirect_to events_path
  end
end
