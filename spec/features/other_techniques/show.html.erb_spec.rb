require 'rails_helper'

RSpec.describe "other_techniques/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:other_technique) { create(:other_technique, :a, user: user) }

    before do
      sign_in user
      visit other_technique_path(id: other_technique.id)
    end

    scenario "is displayed other_techniques informations" do
      expect(page).to have_content other_technique.name
      expect(page).to have_content other_technique.cost
      expect(page).to have_content other_technique.tool
      expect(page).to have_content other_technique.description
      expect(page).to have_content other_technique.warning
      expect(page).to have_content other_technique.time
    end

    scenario 'have link to other_techniques#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_other_technique_path(id: other_technique.id)
    end

  end
end
