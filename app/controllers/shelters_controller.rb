class SheltersController < ApplicationController


  def index
    if
      name = params[:name]
      @shelters = Shelter.search(name)
        json_response(@shelters)
    else
      location = params[:location]
      @shelters = Shelter.location_search(city)
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
        message: "This shelter has been updated successfully."
      }
    end
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def shelter_params
    params.permit(:name, :location)
  end
end
