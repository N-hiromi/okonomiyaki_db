require 'rails_helper'

RSpec.describe "cuts/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:technique_category) { create(:technique_category) }

    before do
      sign_in user
      visit new_technique_category_cut_path(technique_category_id: 1)
    end

    scenario "have cuts forms and can be submitted" do
      fill_in "cut_name", with: "Cut_name"
      fill_in "cut_cost", with: 1
      fill_in "cut_description", with: "Cut_desciption"
      fill_in "cut_warning", with: "Cut_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "工法を登録しました"
    end
  end
end
