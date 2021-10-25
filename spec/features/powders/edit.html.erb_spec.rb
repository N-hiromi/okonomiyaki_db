require 'rails_helper'

RSpec.describe "powders/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:powder) { create(:powder, :a, user: user) }

    before do
      sign_in user
      visit edit_powder_path(id: powder.id)
    end

    scenario "have powders forms and can be submitted" do
      fill_in "powder_name", with: "Powder_name"
      fill_in "powder_cost", with: 1
      fill_in "powder_description", with: "Powder_desciption"
      fill_in "powder_warning", with: "Powder_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy powders informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
