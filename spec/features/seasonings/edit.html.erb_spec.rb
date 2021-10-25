require 'rails_helper'

RSpec.describe "seasonings/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:seasoning) { create(:seasoning, :a, user: user) }

    before do
      sign_in user
      visit edit_seasoning_path(id: seasoning.id)
    end

    scenario "have seasonings forms and can be submitted" do
      fill_in "seasoning_name", with: "Seasoning_name"
      fill_in "seasoning_cost", with: 1
      fill_in "seasoning_description", with: "Seasoning_desciption"
      fill_in "seasoning_warning", with: "Seasoning_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy seasonings informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
