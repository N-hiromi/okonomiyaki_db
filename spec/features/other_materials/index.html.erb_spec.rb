require 'rails_helper'

RSpec.describe "other_materials/index.html.erb", type: :feature do
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }
    let!(:other_material) { create(:category_other_material, material_category: material_category) }

    before do
      sign_in user
      visit material_category_other_materials_path(material_category_id: 1)
    end

    scenario "is displayed other_materials informations" do
      expect(page).to have_content other_material.name
      expect(page).to have_content other_material.cost
      expect(page).to have_content other_material.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content other_material.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to other_materials#show' do
      click_link other_material.name, match: :first
      expect(page).to have_current_path other_material_path(id: other_material.id)
    end

  end
end
