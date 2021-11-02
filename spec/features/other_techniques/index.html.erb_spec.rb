require 'rails_helper'

RSpec.describe "other_techniques/index.html.erb", type: :feature do
  include SearchSupport
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:technique_category) { create(:technique_category) }
    let!(:other_technique) { create(:category_other_technique, technique_category: technique_category) }

    before do
      sign_in user
      visit technique_category_other_techniques_path(technique_category_id: 1)
    end

    scenario "is displayed other_techniques informations" do
      expect(page).to have_content other_technique.name
      expect(page).to have_content other_technique.cost
      expect(page).to have_content other_technique.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content other_technique.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'can be searched other_techniques for name, cost, and user_id' do
      search_name("Other_technique3", other_technique)
      search_cost(9, 11, other_technique)
      search_no_user_id("テスト1", other_technique)
    end

    scenario 'have link to other_techniques#show' do
      click_link other_technique.name, match: :first
      expect(page).to have_current_path other_technique_path(id: other_technique.id)
    end

  end
end
