require 'rails_helper'

RSpec.describe "TechniqueCategories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/technique_categories/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/technique_categories/show"
      expect(response).to have_http_status(:success)
    end
  end

end
