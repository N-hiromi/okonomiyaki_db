require 'rails_helper'

RSpec.describe "bakes/new.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }
    let!(:technique_category) { create(:technique_category) }

    before do
      sign_in user
      visit new_technique_category_bake_path(technique_category_id: 1)
    end

    scenario "have bakes forms and can be submitted" do
      fill_in "bake_name", with: "Bake_name"
      fill_in "bake_cost", with: 1
      fill_in "bake_description", with: "Bake_desciption"
      fill_in "bake_warning", with: "Bake_warning"
      click_on "submit"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "工法を登録しました"
    end
  end
end
