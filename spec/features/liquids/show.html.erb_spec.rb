require 'rails_helper'

RSpec.describe "liquids/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:liquid) { create(:liquid, :a, user: user) }

    before do
      sign_in user
      visit liquid_path(id: liquid.id)
    end

    scenario "is displayed liquids informations" do
      expect(page).to have_content liquid.name
      expect(page).to have_content liquid.cost
      expect(page).to have_content liquid.description
      expect(page).to have_content liquid.warning
      expect(page).to have_content liquid.density
      expect(page).to have_content liquid.viscosity
    end

    scenario 'have link to liquids#show' do
      click_link "情報の変更", match: :first
      expect(page).to have_current_path edit_liquid_path(id: liquid.id)
    end

  end
end
