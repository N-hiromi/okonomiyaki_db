require 'rails_helper'

RSpec.describe "OtherTechniques", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/other_techniques/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/other_techniques/show"
      expect(response).to have_http_status(:success)
    end
  end

end
