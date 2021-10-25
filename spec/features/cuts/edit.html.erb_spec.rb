require 'rails_helper'

RSpec.describe "cuts/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:cut) { create(:cut, :a, user: user) }

    before do
      sign_in user
      visit edit_cut_path(id: cut.id)
    end

    scenario "have cuts forms and can be submitted" do
      fill_in "cut_name", with: "Cut_name"
      fill_in "cut_cost", with: 1
      fill_in "cut_description", with: "Cut_desciption"
      fill_in "cut_warning", with: "Cut_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy cuts informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
