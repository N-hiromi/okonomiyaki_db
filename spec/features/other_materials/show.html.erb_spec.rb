require 'rails_helper'

RSpec.describe "other_materials/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:other_material) { create(:other_material, :a, user: user) }

    before do
      sign_in user
      visit other_material_path(id: other_material.id)
    end

    scenario "is displayed other_materials informations" do
      expect(page).to have_content other_material.name
      expect(page).to have_content other_material.cost
      expect(page).to have_content other_material.description
      expect(page).to have_content other_material.warning
    end

    scenario 'have link to other_materials#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_other_material_path(id: other_material.id)
    end

  end
end
