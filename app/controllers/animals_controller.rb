class AnimalsController < ApplicationController

  # def index
  #   if
  #     author = params[:author]
  #     @animals = Animal.author_search(author)
  #       json_response(@animals)
  #   elsif
  #     content = params[:content]
  #     @animals = Animal.content_search(content)
  #     json_response(@animals)
  #   elsif
  #     created_at = params[:created_at]
  #     @animals = Animal.specific_time_search(created_at)
  #     json_response(@animals)
  #   else
  #     @animals = Animal.all
  #      json_response(@animals)
  #   end
  # end

  def index
    @animal = Animal.find(params[:id]).all
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create(animal_params)
    json_response(@animal)
  end

  def update
    @animal = Animal.find(params[:id])
    # @animal.update(animal_params)
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "You updated up the animal, friend!"
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
    params.permit(:breed,:shelter_id)
  end
end
