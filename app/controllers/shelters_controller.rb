class SheltersController < ApplicationController

  def index
    @shelters = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@shelters)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
