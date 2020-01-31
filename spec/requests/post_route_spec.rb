require 'rails_helper'

describe "post a shelter route", :type => :request do

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


describe "post a animals route", :type => :request do

  before do
    post '/shelters', params: { :name => 'Garys Animal Depot', :location => 'test_location' }
    get '/shelters/21/animals/1'

  end

  it 'returns the name of the shelter' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the shelter location' do
    expect(JSON.parse(response.body)['location']).to eq('test_location')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
