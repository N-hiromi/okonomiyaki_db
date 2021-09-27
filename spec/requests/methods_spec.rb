require 'rails_helper'

RSpec.describe "Methods", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/methods/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/methods/show"
      expect(response).to have_http_status(:success)
    end
  end

end
