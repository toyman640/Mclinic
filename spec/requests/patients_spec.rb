require 'rails_helper'

RSpec.describe 'Patients', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/patients/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/patients/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/patients/create'
      expect(response).to have_http_status(:success)
    end
  end
end
