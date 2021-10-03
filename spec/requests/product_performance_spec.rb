require 'rails_helper'

RSpec.describe "ProductPerformances", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/product_performance/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/product_performance/show"
      expect(response).to have_http_status(:success)
    end
  end

end
