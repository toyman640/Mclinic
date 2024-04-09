require 'rails_helper'

RSpec.describe "StaffSessions", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/staff_session/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/staff_session/create"
      expect(response).to have_http_status(:success)
    end
  end

end
