require 'rails_helper'

RSpec.describe "bakes/index.html.erb", type: :feature do
  include SearchSupport
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:technique_category) { create(:technique_category) }
    let!(:bake) { create(:category_bake, technique_category: technique_category) }

    before do
      sign_in user
      visit technique_category_bakes_path(technique_category_id: 1)
    end

    scenario "is displayed bakes informations" do
      expect(page).to have_content bake.name
      expect(page).to have_content bake.cost
      expect(page).to have_content bake.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content bake.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'can be searched bakes for name, cost, and user_id' do
      search_name("Bake3", bake)
      search_cost(9, 11, bake)
      search_no_user_id("テスト1", bake)
    end

    scenario 'have link to bakes#show' do
      click_link bake.name, match: :first
      expect(page).to have_current_path bake_path(id: bake.id)
    end
  end
end
