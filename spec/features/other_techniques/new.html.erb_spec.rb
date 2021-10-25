require 'rails_helper'

RSpec.describe "other_techniques/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:technique_category) { create(:technique_category) }

    before do
      sign_in user
      visit new_technique_category_other_technique_path(technique_category_id: 1)
    end

    scenario "have other_techniques forms and can be submitted" do
      fill_in "other_technique_name", with: "Other_technique_name"
      fill_in "other_technique_cost", with: 1
      fill_in "other_technique_description", with: "Other_technique_desciption"
      fill_in "other_technique_warning", with: "Other_technique_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "工法を登録しました"
    end
  end
end
