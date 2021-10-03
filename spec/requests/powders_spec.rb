require 'rails_helper'

RSpec.describe "Powders", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/powders/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/powders/show"
      expect(response).to have_http_status(:success)
    end
  end

end
