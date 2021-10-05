require 'rails_helper'

RSpec.describe "Searches", type: :request do
  describe "GET /product_search" do
    it "returns http success" do
      get "/search/product_search"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /material_search" do
    it "returns http success" do
      get "/search/material_search"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /technique_search" do
    it "returns http success" do
      get "/search/technique_search"
      expect(response).to have_http_status(:success)
    end
  end

end
