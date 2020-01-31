require 'rails_helper'

describe "shelter route", :type => :request do

  before do
    post '/shelters', params: { :name => 'Garys Animal Depot', :location => 'Indiana' }
  end

  it 'returns the name of the shelter' do
    expect(JSON.parse(response.body)['name']).to eq('Garys Animal Depot')
  end

  it 'returns the shelter location' do
    expect(JSON.parse(response.body)['location']).to eq('Indiana')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
