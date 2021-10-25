require 'rails_helper'

RSpec.describe "bakes/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:bake) { create(:bake, :a, user: user) }

    before do
      sign_in user
      visit bake_path(id: bake.id)
    end

    scenario "is displayed bakes informations" do
      expect(page).to have_content bake.name
      expect(page).to have_content bake.cost
      expect(page).to have_content bake.tool
      expect(page).to have_content bake.description
      expect(page).to have_content bake.warning
      expect(page).to have_content bake.temp
      expect(page).to have_content bake.time
    end

    scenario 'have link to bakes#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_bake_path(id: bake.id)
    end

  end
end
