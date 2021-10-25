require 'rails_helper'

RSpec.describe "powders/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:material_category) { create(:material_category) }

    before do
      sign_in user
      visit new_material_category_powder_path(material_category_id: 1)
    end

    scenario "have powders forms and can be submitted" do
      fill_in "powder_name", with: "Powder_name"
      fill_in "powder_cost", with: 1
      fill_in "powder_description", with: "Powder_desciption"
      fill_in "powder_warning", with: "Powder_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "材料を登録しました"
    end
  end
end
