class Api::DestinationsController < ApplicationController
  def index
    destinations = Destination.all
    
    allAttractions = {}
    destinations.each do |destination|
      destination.attractions
    end
    
    respond_to do |format|
      format.json{render :json => destinations}
    end
  end

  def show
    destination = Destination.find(params[:id])
    
    respond_to do |format|
      format.json{render :json => destination}
    end
  end
  
  def default_serializer_options
    {root: false}
  end
  
end
