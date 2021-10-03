require 'rails_helper'

RSpec.describe "ProductMaterials", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/product_materials/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/product_materials/show"
      expect(response).to have_http_status(:success)
    end
  end

end
