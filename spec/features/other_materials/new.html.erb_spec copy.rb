require 'rails_helper'

RSpec.describe "other_materials/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }

    before do
      sign_in user
      visit new_material_category_other_material_path(material_category_id: 1)
    end

    scenario "have other_materials forms and can be submitted" do
      fill_in "other_material_name", with: "Other_material_name"
      fill_in "other_material_cost", with: 1
      fill_in "other_material_description", with: "Other_material_desciption"
      fill_in "other_material_warning", with: "Other_material_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "材料を登録しました"
    end
  end
end
