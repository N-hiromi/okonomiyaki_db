require 'rails_helper'

RSpec.describe "cuts/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:cut) { create(:cut, :a, user: user) }

    before do
      sign_in user
      visit cut_path(id: cut.id)
    end

    scenario "is displayed cuts informations" do
      expect(page).to have_content cut.name
      expect(page).to have_content cut.cost
      expect(page).to have_content cut.tool
      expect(page).to have_content cut.description
      expect(page).to have_content cut.warning
      expect(page).to have_content cut.width
      expect(page).to have_content cut.height
    end

    scenario 'have link to cuts#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_cut_path(id: cut.id)
    end

  end
end
