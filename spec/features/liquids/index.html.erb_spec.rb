require 'rails_helper'

RSpec.describe "liquids/index.html.erb", type: :feature do
  include SearchSupport
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }
    let!(:liquid) { create(:category_liquid, material_category: material_category) }

    before do
      sign_in user
      visit material_category_liquids_path(material_category_id: 1)
    end

    scenario "is displayed liquids informations" do
      expect(page).to have_content liquid.name
      expect(page).to have_content liquid.cost
      expect(page).to have_content liquid.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content liquid.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'can be searched liquids for name, cost, and user_id' do
      search_name("Liquid3", liquid)
      search_cost(9, 11, liquid)
      search_no_user_id("テスト1", liquid)
    end

    scenario 'have link to liquids#show' do
      click_link liquid.name, match: :first
      expect(page).to have_current_path liquid_path(id: liquid.id)
    end

  end
end
