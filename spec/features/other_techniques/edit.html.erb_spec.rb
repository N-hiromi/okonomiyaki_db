require 'rails_helper'

RSpec.describe "other_techniques/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:other_technique) { create(:other_technique, :a, user: user) }

    before do
      sign_in user
      visit edit_other_technique_path(id: other_technique.id)
    end

    scenario "have other_techniques forms and can be submitted" do
      fill_in "other_technique_name", with: "Other_technique_name"
      fill_in "other_technique_cost", with: 1
      fill_in "other_technique_description", with: "Other_technique_desciption"
      fill_in "other_technique_warning", with: "Other_technique_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy other_techniques informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
