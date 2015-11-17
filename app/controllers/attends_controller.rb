class AttendsController < ApplicationController
  def create
    @attend = Attend.new
    @attend.email =params[:attend][:email]
    @attend.save!
    redirect_to events_path
  end
end
