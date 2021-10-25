require 'rails_helper'

RSpec.describe "powders/index.html.erb", type: :feature do
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }
    let!(:powder) { create(:category_powder, material_category: material_category) }

    before do
      sign_in user
      visit material_category_powders_path(material_category_id: 1)
    end

    scenario "is displayed powders informations" do
      expect(page).to have_content powder.name
      expect(page).to have_content powder.cost
      expect(page).to have_content powder.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content powder.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to powders#show' do
      click_link powder.name, match: :first
      expect(page).to have_current_path powder_path(id: powder.id)
    end

  end
end
