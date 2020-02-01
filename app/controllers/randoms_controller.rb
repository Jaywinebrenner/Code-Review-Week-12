class RandomsController < ApplicationController

  def index
    @shelters = Shelter.all
    json_response(@shelters.sample)
  end

end
