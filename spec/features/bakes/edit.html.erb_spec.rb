require 'rails_helper'

RSpec.describe "bakes/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:bake) { create(:bake, :a, user: user) }

    before do
      sign_in user
      visit edit_bake_path(id: bake.id)
    end

    scenario "have bakes forms and can be submitted" do
      fill_in "bake_name", with: "Bake_name"
      fill_in "bake_cost", with: 1
      fill_in "bake_description", with: "Bake_desciption"
      fill_in "bake_warning", with: "Bake_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy bakes informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
