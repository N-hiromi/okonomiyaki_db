require 'rails_helper'

RSpec.describe "Discusses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/discusses/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/discusses/show"
      expect(response).to have_http_status(:success)
    end
  end

end
