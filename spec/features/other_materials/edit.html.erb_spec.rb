require 'rails_helper'

RSpec.describe "other_materials/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:other_material) { create(:other_material, :a, user: user) }

    before do
      sign_in user
      visit edit_other_material_path(id: other_material.id)
    end

    scenario "have other_materials forms and can be submitted" do
      fill_in "other_material_name", with: "Other_material_name"
      fill_in "other_material_cost", with: 1
      fill_in "other_material_description", with: "Other_material_desciption"
      fill_in "other_material_warning", with: "Other_material_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy other_materials informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
