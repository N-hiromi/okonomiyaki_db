require 'rails_helper'

RSpec.describe "MaterialCategories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/material_categories/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/material_categories/show"
      expect(response).to have_http_status(:success)
    end
  end

end
