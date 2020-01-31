class SheltersController < ApplicationController


  def index
    @shelters = Shelter.all
    name = params[:name]
    @shelters = Shelter.name_search(name)
    json_response(@shelters)
  end

  #   def index
  #       @shelters = Shelter.all
  #       json_response(@shelters)
  #   if
  #     name = params[:name]
  #     @shelters = Shelter.name_search(name)
  #     binding.pry
  #       json_response(@shelters)
  #   else
  #     location = params[:location]
  #     @shelters = Shelter.location_search(location)
  #     json_response(@shelters)
  #   end
  # end

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
