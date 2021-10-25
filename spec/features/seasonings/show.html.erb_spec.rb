require 'rails_helper'

RSpec.describe "seasonings/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:seasoning) { create(:seasoning, :a, user: user) }

    before do
      sign_in user
      visit seasoning_path(id: seasoning.id)
    end

    scenario "is displayed seasonings informations" do
      expect(page).to have_content seasoning.name
      expect(page).to have_content seasoning.cost
      expect(page).to have_content seasoning.description
      expect(page).to have_content seasoning.warning
    end

    scenario 'have link to seasonings#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_seasoning_path(id: seasoning.id)
    end
  end
end
