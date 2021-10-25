require 'rails_helper'

RSpec.describe "liquids/edit.html.erb", type: :feature do
  feature "editについてテスト" do
    let!(:user) { create(:user) }
    let!(:liquid) { create(:liquid, :a, user: user) }

    before do
      sign_in user
      visit edit_liquid_path(id: liquid.id)
    end

    scenario "have liquids forms and can be submitted" do
      fill_in "liquid_name", with: "Liquid_name"
      fill_in "liquid_cost", with: 1
      fill_in "liquid_description", with: "Liquid_desciption"
      fill_in "liquid_warning", with: "Liquid_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "情報を更新しました"
    end

    scenario 'can destroy liquids informations' do
      click_button "削除"
      expect(page).to have_current_path account_path(id: user.id)
      expect(page).to have_content "情報を削除しました"
    end
  end
end
