require 'rails_helper'

RSpec.describe "Indices", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/index/show"
      expect(response).to have_http_status(:success)
    end
  end

end