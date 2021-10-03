require 'rails_helper'

RSpec.describe "Seasonings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/seasonings/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/seasonings/show"
      expect(response).to have_http_status(:success)
    end
  end

end
