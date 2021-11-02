require 'rails_helper'
RSpec.feature "accounts/index.html.erb", type: :feature do
  include SearchSupport
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    
    before do
      sign_in user
      visit accounts_path
    end

    scenario "is displayed user informations" do
      expect(page).to have_content user.name
      expect(page).to have_content user.department
    end
    #scenario 'can be searched bakes for name, cost, and user_id' do
    #  search_name("Bake3", bake)
    #  search_cost(9, 11, bake)
    #  search_no_user_id("テスト1", bake)
    #end

  end
end
