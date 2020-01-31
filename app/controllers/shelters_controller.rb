class SheltersController < ApplicationController


  def index
    if
      name = params[:name]
      @shelters = Shelter.name_search(name)
      json_response(@shelters)
    elsif
      location = params[:locations]
      @shelters = Shelter.location_search(location)
    else
      @shelters = Shelter.all
      json_response(@shelters)
    end
  end

  def show
    @shelter = Shelter.find(params[:id])
    json_response(@shelter)
  end

  def create
    @shelter = Shelter.create!(shelter_params)
    json_response(@shelter)

  end

  def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update!(shelter_params)
      render status: 200, json: {
        message: "You updated up the shelter, friend!"
      }
    end
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
  end

  private

  def shelter_params
    params.permit(:name, :location)
  end
end
