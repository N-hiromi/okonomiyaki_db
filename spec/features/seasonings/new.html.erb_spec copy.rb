require 'rails_helper'

RSpec.describe "seasonings/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }

    before do
      sign_in user
      visit new_material_category_seasoning_path(material_category_id: 1)
    end

    scenario "have seasonings forms and can be submitted" do
      fill_in "seasoning_name", with: "Seasoning_name"
      fill_in "seasoning_cost", with: 1
      fill_in "seasoning_description", with: "Seasoning_desciption"
      fill_in "seasoning_warning", with: "Seasoning_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "材料を登録しました"
    end
  end
end
