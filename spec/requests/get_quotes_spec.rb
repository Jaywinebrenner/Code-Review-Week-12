require 'rails_helper'

describe "get all shelters route", :breed => :request do
  let!(:shelters) { FactoryBot.create_list(:shelter, 20)}

  before { get '/shelters'}

  it 'returns all shelters' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
