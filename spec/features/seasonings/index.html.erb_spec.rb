require 'rails_helper'

RSpec.describe "seasonings/index.html.erb", type: :feature do
  include SearchSupport
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }
    let!(:seasoning) { create(:category_seasoning, material_category: material_category) }

    before do
      sign_in user
      visit material_category_seasonings_path(material_category_id: 1)
    end

    scenario "is displayed seasonings informations" do
      expect(page).to have_content seasoning.name
      expect(page).to have_content seasoning.cost
      expect(page).to have_content seasoning.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content seasoning.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'can be searched seasonings for name, cost, and user_id' do
      search_name("Seasoning3", seasoning)
      search_cost(9, 11, seasoning)
      search_no_user_id("テスト1", seasoning)
    end

    scenario 'have link to seasonings#show' do
      click_link seasoning.name, match: :first
      expect(page).to have_current_path seasoning_path(id: seasoning.id)
    end

  end
end
