class EventPicturesController < ApplicationController
  def create
    @event = Event.find(params[:id])
    @event.event_picture.attach(params[:event_picture]) 
    redirect_to event_path(@event)
  end
end
