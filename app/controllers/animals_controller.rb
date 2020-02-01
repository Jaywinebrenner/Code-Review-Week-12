class AnimalsController < ApplicationController

  def index
    if
      breed = params[:breed]
      @shelters = Shelter.breed_search(breed)
      json_response(@shelters)
    else
      @shelter = Shelter.find(params[:shelter_id])
      json_response(@animal)
    end
  end

  def show
    @shelter = Shelter.find(params[:shelter_id])
    @animal= Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @shelter = Shelter.find(params[:shelter_id])
    @animal = @shelter.animals.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "You just updated that animal, friend!"
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "This animal has been destroyed. Murderer."
      }
    end
  end

  private


  def animal_params
    params.permit(:breed, :shelter_id)
  end
end
