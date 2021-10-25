require 'rails_helper'
RSpec.feature "accounts/index.html.erb", type: :feature do
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
  end
end
