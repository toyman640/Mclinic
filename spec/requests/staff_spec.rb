require 'rails_helper'

RSpec.describe "Staffs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/staff/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/staff/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/staff/create"
      expect(response).to have_http_status(:success)
    end
  end

end
