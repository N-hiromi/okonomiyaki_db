require 'rails_helper'

RSpec.describe "Bakes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/bakes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/bakes/show"
      expect(response).to have_http_status(:success)
    end
  end

end
