require 'rails_helper'

RSpec.describe "liquids/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }

    before do
      sign_in user
      visit new_material_category_liquid_path(material_category_id: 1)
    end

    scenario "have liquids forms and can be submitted" do
      fill_in "liquid_name", with: "Liquid_name"
      fill_in "liquid_cost", with: 1
      fill_in "liquid_description", with: "Liquid_desciption"
      fill_in "liquid_warning", with: "Liquid_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "材料を登録しました"
    end
  end
end
