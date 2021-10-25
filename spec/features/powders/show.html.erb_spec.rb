require 'rails_helper'

RSpec.describe "powders/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:powder) { create(:powder, :a, user: user) }

    before do
      sign_in user
      visit powder_path(id: powder.id)
    end

    scenario "is displayed powders informations" do
      expect(page).to have_content powder.name
      expect(page).to have_content powder.cost
      expect(page).to have_content powder.description
      expect(page).to have_content powder.warning
      expect(page).to have_content powder.particle_size
      expect(page).to have_content powder.density
      expect(page).to have_content powder.ssa
    end

    scenario 'have link to powders#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_powder_path(id: powder.id)
    end

  end
end
